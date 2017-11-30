<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@page import="java.util.*, dbController.DatabaseController"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<style>
#loginbox {
	border: 2px solid black;
	border-radius: 5px;
	text-align: center;
	padding: 20px;
    height: 200px;
	width: 400px;
	position:relative;
	left:35%;
}
</style>
<body>
	<h2>Login</h2>
	<div id="loginbox">
		<form action="login.jsp">
			UserID <input type="text" id="userid" name="userid"> 
			<br>
			Password <input type="password" id="password" name="password">
			<br>
			<button type="submit"> login</button>
			<button type="button" onclick="window.location.href='register.jsp'">Register</button>
			
		</form>
	</div>
	<%
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("password");
	session.setAttribute("userID",userid);
	session.setAttribute("userType","1");
	
	DatabaseController dbc = new DatabaseController();
	dbc.connect();
	int userType = dbc.verifyAccount(userid,pwd);
	if(userType == 1){
		response.sendRedirect("CustomerPage.jsp");
		session.setAttribute("userType","1");
	}
	if(userType ==2 ){
		response.sendRedirect("ManagerPage.jsp");
		session.setAttribute("userType","2");
	}
	else if(userType == 0){
		out.write("<h1>your userid or password is not correct!</h1>");
	}
	
	dbc.disconnect();
	%>
</body>
</html>