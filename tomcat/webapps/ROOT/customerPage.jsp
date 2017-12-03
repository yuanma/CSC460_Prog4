<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*, java.util.ArrayList, dbController.DBController, dbController.partRecord, dbController.deptRecord;"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Customer Page</title>
		<style>
			button {
			    background-color: #4CAF50;
			    color: white;
			    padding: 14px 20px;
			    margin: 8px 0;
			    border: none;
			    cursor: pointer;
			    width: auto;
			}
		</style>
	</head>
	<body>
	<div id="customerBox">

	<center>
		<h2>Customer Selection</h2>
		<form action="customerPage.jsp" method="post">
			<fieldset id = "field1">
				<legend>Customer Selection:</legend>
				<input type="radio" name="myRadio" value="addOrder"/> Add New Order
				<br>
				<input type="radio" name="myRadio" value="checkContract"/> Check Contract
				<br>
			</fieldset>
			
			<br>
			
			Please Choose One Action From Above:
			<br>
			<button type="submit" value="submitBtn" name="submitBtn"> submit</button>
			<button type="button" onclick="window.location.href='login.jsp'">Back</button>
		</form>
	</center>
	</div>
	<%
		if(request.getParameter("submitBtn") == null){
			return;
		}
		else {
			String selection = request.getParameter("myRadio");
			if (selection == null){
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Please Make Your Selection');");
				out.println("location='customerPage.jsp';");
				out.println("</script>");
			}
			else if(selection.equals("addOrder")){
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Add Order Selected');");
				out.println("location='customerPage.jsp';");
				out.println("</script>");
			}
			else if(selection.equals("checkContract")){
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Check Contract');");
				out.println("location='userPage.jsp';");
				out.println("</script>");

			}
		}
	%>
	</body>
</html>