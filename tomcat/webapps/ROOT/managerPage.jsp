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
			}
		</style>
	</head>
	<body>
	<div id="managerBox">

	<center>
		<h2>Manager Selection</h2>
		<form action="managerPage.jsp" method="post">
			<fieldset id = "field1">
				<legend>Update Database:</legend>
				<input type="radio" name="myRadio" value="addShip"/> Add New Ship
				<br>
				<input type="radio" name="myRadio" value="addDept"/> Add New Dept
				<br>
				<input type="radio" name="myRadio" value="addPart"/> Add New Part
				<br>
				<input type="radio" name="myRadio" value="updateItemCost"/> Update Part Cost
				<br>
			</fieldset>
			
			<br>
			
			<fieldset id = "field2">
				<legend>Update Progress:</legend>
				<input type="radio" name="myRadio" value="updateProgress"/> Update Ship Building Progress
				<br>
				<input type="radio" name="myRadio" value="scrapShip"/> Scrap Ship or Cancel Order
				<br>
			</fieldset>
			
			Please Choose One Action From Above:
			<br>
			<button type="submit" value="submitBtn" name="submitBtn"> submit</button>
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
				out.println("location='managerPage.jsp';");
				out.println("</script>");
			}
			else if(selection.equals("addShip")){
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Add Ship Selected');");
				out.println("location='managerPage.jsp';");
				out.println("</script>");
			}
			else if(selection.equals("addDept")){
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Add Department Selected');");
				out.println("location='managerPage.jsp';");
				out.println("</script>");

			}
			else if(selection.equals("addPart")){
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Add Part Selected');");
				out.println("location='managerPage.jsp';");
				out.println("</script>");
			}
			else if(selection.equals("updateItemCost")){
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Update Item Cost Selected');");
				out.println("location='managerPage.jsp';");
				out.println("</script>");
			}
			else if(selection.equals("updateProgress")){
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Update Progress Selected');");
				out.println("location='managerPage.jsp';");
				out.println("</script>");
			}
			else if(selection.equals("scrapShip")){
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Scrap Ship Selected');");
				out.println("location='managerPage.jsp';");
				out.println("</script>");
			}
		}
	%>
	</body>
</html>