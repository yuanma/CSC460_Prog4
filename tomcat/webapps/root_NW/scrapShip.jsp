<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Scrap Ship</title>
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
			.bloc { 
				display:inline; 
				vertical-align:top; 
				overflow:scroll; 
				border:solid grey 1px; 
				overflow-x: hidden;
				position: absolute;
			}	
		</style>
	</head>
	<body>
	<div id="scrapShipBox">

	<center>
		<h2>Scrap Ship</h2>
		<form action="scrapShip.jsp" method="post">
			<fieldset id = "field1">
				<legend>Enter Information:</legend>				
								
				<h3>Enter The Order Number: 
					<input type="text" name="orderID" value="" onkeypress="this.style.width = ((this.value.length + 2) * 8) + 'px';">
				</h3>				
			</fieldset>
			
			<br>

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
	out.println("location='updatePartCost.jsp';");
	out.println("</script>");
	%>
	
	</body>
	

</html>