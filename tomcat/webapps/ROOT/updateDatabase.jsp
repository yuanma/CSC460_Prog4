<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Manager Page</title>
		<style>
			button {
			    background-color: #4CAF50;
			    color: white;
			    padding: 14px 20px;
			    margin: 8px 0;
			    border: none;
			    cursor: pointer;
			    width: 100px;
		
			#managerBox {
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
	</head>
	<body>
	<div id="managerBox">
	<h2>Manager Selection</h2>
	<form action="managerPage.jsp">
		<center>
		<button type="button" onclick="window.location.href='updateDataBase.jsp'">Update Database</button>
		<br> 
		<button type="button" onclick="window.location.href='updateProgress.jsp'">Update Progress</button>
		<p id="result"></p>
		</form>
		</center>
	</div>
	
	</body>
</html>