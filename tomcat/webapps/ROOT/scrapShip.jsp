<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*, java.util.ArrayList, dbController.DBController, dbController.partRecord, dbController.deptRecord;"%>
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
			#shipOrderedList {
				list-style-type: none;
				padding: 0;
				margin: 0;
				max-height: 300px;
				display:inline; 
				vertical-align:top; 
				overflow-y:scroll; 
				overflow-x: hidden;
			}

			#shipOrderedList li a {
				border: 1px solid #ddd;
				margin-top: -1px; /* Prevent double borders */
				background-color: #f6f6f6;
				padding: 12px;
				text-decoration: none;
				font-size: 18px;
				color: black;
				display: block
			}

			#shipOrderedList li a:hover:not(.header) {
				background-color: #eee;
			}
			#myInput {
				background-image: url('/css/searchicon.png');
				background-repeat: no-repeat;
				width: 100%;
				font-size: 16px;
				padding: 12px 20px 12px 40px;
				border: 1px solid #ddd;
				margin-bottom: 12px;
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
					<input type="text" name="orderID" id="orderID" value="" onkeyup="myFunction()" placeholder="Search for Order.." title="Type in an order ID">
				</h3>				
			</fieldset>
			
			<br>

			<fieldset id = "field2">
				<legend>Click to Choose The Ship to Destroy IT</legend>
				<h3>
				<ol id="shipOrderedList">
				<%
				%>
				  <li id="Adele1" ><a href="#">Adele</a></li>
				  <li id="Adele2"><a href="#">Agnes</a></li>

				  <li id="Adele3"><a href="#">Billy</a></li>
				  <li id="Adele4"><a href="#">Bob</a></li>

				  <li id="Adele5"><a href="#">Calvin</a></li>
				  <li id="Adele6"><a href="#">Christina</a></li>
				  <li id="Adele7"><a href="#">Cindy</a></li>
				</ol>
				</h3>
				<script>
				function myFunction() {
					var input, filter, ol, li, a, i;
					input = document.getElementById("orderID");
					filter = input.value.toUpperCase();
					ol = document.getElementById("shipOrderedList");
					li = ol.getElementsByTagName("li");
					for (i = 0; i < li.length; i++) {
						a = li[i].getElementsByTagName("a")[0];
						if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
							li[i].style.display = "";
						} else {
							li[i].style.display = "none";

						}
					}
				}
				
				function getEventTarget(e) {
					e = e || window.event;
					return e.target || e.srcElement; 
				}

				var shipList = document.getElementById('shipOrderedList');
				for (var i = 0, len = shipList.children.length; i < len; i++)
				{

					(function(index){
						shipList.children[i].onclick = function(){
							var orderIDBox = document.getElementById("orderID");  
							orderIDBox.value = shipList.children[index].getAttribute("id");
						}    
					})(i);

				}
				</script>
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
	out.println("location='updatePartCost.jsp';");
	out.println("</script>");
	%>
	
	</body>
	

</html>