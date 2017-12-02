<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Update Order Progress</title>
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
	<div id="updateProgressBox">

	<center>
		<h2>Update Order Progress</h2>
		<form action="updateProgress.jsp" method="post">
			<fieldset id = "field1">
				<legend>Enter Information:</legend>				
								
				<h3>Enter The Order Number: 
					<input type="text" name="orderID" value="" onkeypress="this.style.width = ((this.value.length + 2) * 8) + 'px';">
				</h3>	
			</fieldset>
			
			<br>
			
			<fieldset id = "field2">
				<legend>Part List:</legend>				
								
				Set The Installation Condition: 
					<%
						request.setCharacterEncoding("utf-8");
						response.setContentType("text/html;charset=utf-8");
						out.println("<script type=\"text/javascript\">");
						out.println("var paragraph = document.getElementById(\"field2\");");
						out.println("paragraph.innerHTML += \"<input type=\"radio\" name=\"1\" value=\"PartA\"/> PartA\"");
						out.println("paragraph.innerHTML += \"<input type=\"radio\" name=\"1\" value=\"PartA\"/> PartA\"");
						out.println("paragraph.innerHTML += \"<input type=\"radio\" name=\"1\" value=\"PartA\"/> PartA\"");
						out.println("paragraph.innerHTML += \"<input type=\"radio\" name=\"1\" value=\"PartA\"/> PartA\"");						
						out.println("</script>");
					%>
	
			</fieldset>

			<button type="submit" id="submitBtn" name="submitBtn"> Scrap The Ship</button>
		</form>
	</center>
	</div>

	
	<%	
	if (request.getParameter("submitBtn") == null){
		return;
	}
	
	String orderID = request.getParameter("orderID");
	
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
	out.println("<script type=\"text/javascript\">");
	out.println("alert('" + orderID + "');");
	out.println("location='updateProgress.jsp';");
	out.println("</script>");
	%>
	
	</body>
	

</html>