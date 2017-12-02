<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Update Part Cost</title>
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
	<div id="updatePartCostBox">

	<center>
		<h2>Update Part Cost</h2>
		<form action="updatePartCost.jsp" method="post">
			<fieldset id = "field1">
				<legend>Enter Information:</legend>				
				<h3>Choose Part:
					  <select class="bloc" name="partSelect" id="partSelect" 
						      onfocus='this.size=5;' onblur='this.size=1;' 
						      onchange='this.size=1; this.blur();'>
						<%
							request.setCharacterEncoding("utf-8");
							response.setContentType("text/html;charset=utf-8");
							out.write("<option value=\"\" ></option>");
							out.write("<option value=\"2010\" >2010</option>");
							out.write("<option value=\"2011\" >2011</option>");
							out.write("<option value=\"2012\" >2012</option>");
							out.write("<option value=\"2013\" >2013</option>");
							out.write("<option value=\"2014\" >2014</option>");							
							out.write("<option value=\"2015\" >2015</option>");
							out.write("<option value=\"2016\" >2016</option>");		
							out.write("<option value=\"2017\" >2017</option>");	
						%>
					   </select>			
				</h3>
								
				<h3>Enter Part Price: 
					<input type="text" name="partPrice" value="" onkeypress="this.style.width = ((this.value.length + 2) * 8) + 'px';">
				</h3>				
			</fieldset>
			
			<br>

			<button type="submit" id="submitBtn" name="submitBtn"> Add The Part</button>
		</form>
	</center>
	</div>

	
	<%	
	if (request.getParameter("submitBtn") == null){
		return;
	}
	
	String partName = request.getParameter("partSelect");

	String partPrice = request.getParameter("partPrice");
	
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
	out.println("<script type=\"text/javascript\">");
	out.println("alert('" + partName + "');");
	out.println("location='updatePartCost.jsp';");
	out.println("</script>");
	%>
	
	</body>
	

</html>