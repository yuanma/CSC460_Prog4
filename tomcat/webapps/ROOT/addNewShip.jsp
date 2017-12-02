<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Add New Ship</title>
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
			.bloc { 
				display:inline; 
				vertical-align:top; 
				overflow:scroll; 
				border:solid grey 1px; 
				overflow-x: hidden;
				position: absolute;
			}
			.receiptPopUp {
				display: none;
				position: fixed;
				z-index: 1;
				padding-top: 100px;
				left: 0;
				top: 0;
				width: 100%;
				height: 100%;
				overflow: auto;
				background-color: rgb(0,0,0);
				background-color: rgba(0,0,0,0.4);
			}

			.receiptPopUpContent {
				background-color: #fefefe;
				margin: auto;
				padding: 20px;
				border: 1px solid #888;
				width: 80%;
			}
		
		</style>
	</head>
	<body>
	<div id="addNewShipBox">

	<center>
		<h2>Add New Ship</h2>
		<form action="addNewShip.jsp" method="post">
			<fieldset id = "field1">
				<legend>Enter Information:</legend>
				<h3>Choose Department (Only List The Departments Those Do Not Have A Related Ship):
					  <select class="bloc" name="departmentSelect" id="departmentSelect" 
						      onfocus='this.size=5;' onblur='this.size=1;' 
						      onchange='this.size=1; this.blur();'>
						<%
							request.setCharacterEncoding("utf-8");
							response.setContentType("text/html;charset=utf-8");
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
				
				<br>
				
				<h3>Choose Part(s) (Press Ctrl To Make Multiple Selection):				
					  <select multiple
							  size="1"
							  class="bloc" name="partsSelect" id="partsSelect"
							  onfocus='this.size=5;' onblur='this.size=1;'>							  
						<%
							request.setCharacterEncoding("utf-8");
							response.setContentType("text/html;charset=utf-8");
							out.write("<option value=\"A\" >A</option>");
							out.write("<option value=\"B\" >B</option>");
							out.write("<option value=\"C\" >C</option>");
							out.write("<option value=\"D\" >D</option>");
							out.write("<option value=\"E\" >E</option>");							
							out.write("<option value=\"F\" >F</option>");
							out.write("<option value=\"G\" >G</option>");		
							out.write("<option value=\"H\" >H</option>");	
						%>
					   </select>					
				</h3>
				
				<br>
				
				<h3>Enter Ship Name: 
					<input type="text" name="shipName" id="shipName" value="" onkeypress="this.style.width = ((this.value.length + 2) * 8) + 'px';">
				</h3>
			</fieldset>
			
			
			Please Choose One Action From Above:
			<br>
			<button type="button" id="viewBtn" name="viewBtn"> View The Receipt</button>
			&nbsp;
			&nbsp;
			<button type="submit" id="submitBtn" name="submitBtn"> Add The Ship</button>
		</form>
	</center>
	</div>
	
	<div id="shipReceipt" class="receiptPopUp">
	  <div id="shipReceiptContent" class="receiptPopUpContent">
	  </div>

	</div>	
	
	<script>
	// Get the receiptWindow
	var receiptWindow = document.getElementById('shipReceipt');

	// Get the button that opens the receiptWindow
	var viewButton = document.getElementById("viewBtn");

	// When the user clicks the button, open the receiptWindow 
	viewButton.onclick = function() {
		receiptWindow.style.display = "block";
		
		var paragraph = document.getElementById("shipReceiptContent");
		
		// Print out the Department Name
		var deptSelect = document.getElementById("departmentSelect");
		var deptName = deptSelect.options[deptSelect.selectedIndex].text;
		var deptText = "<p>Department Name:   " + deptName + "</p>"
		
		paragraph.innerHTML += deptText;	
		
		// List the parts Name
		var partsSelect = document.getElementById("partsSelect");
		var partsArr = getSelectValues(partsSelect);
		var partsArrLength = partsArr.length;
		
		var partsText = "<p>Parts List:<br><ul>";
		var i;
		partsText += "<li>" + "HULL" + "</li>";
		partsText += "<li>" + "WING" + "</li>";
		partsText += "<li>" + "ENGINE" + "</li>";
		for (i = 0; i < partsArrLength;i++) {
			partsText += "<li>" + partsArr[i] + "</li>";
		}
		partsText + "</ul></p>";
		
		paragraph.innerHTML += partsText;	
		paragraph.innerHTML += "<br>";	
		
		// Print out the Ship Name
		var shipName = document.getElementById("shipName").value;
		var shipText = "<p>Ship Name:   " + shipName + "</p>"
		
		paragraph.innerHTML += shipText;		
	}
	
	// When the user clicks anywhere outside of the receiptWindow, close it
	window.onclick = function(event) {
		if (event.target == receiptWindow) {
			var paragraph = document.getElementById("shipReceiptContent");
			paragraph.innerHTML = "";
			receiptWindow.style.display = "none";
		}
	}
	
	// Return an array of the selected opion values
	// select is an HTML select element
	function getSelectValues(select) {
	  var result = [];
	  var options = select && select.options;
	  var opt;

	  for (var i=0, iLen=options.length; i<iLen; i++) {
		opt = options[i];

		if (opt.selected) {
		  result.push(opt.value || opt.text);
		}
	  }
	  return result;
	}
	
	</script>	
	
	<%
	if (request.getParameter("submitBtn") == null){
		return;
	}
	
	String deptName = request.getParameter("departmentSelect");
	String[] partArr = request.getParameterValues("partsSelect");
	String shipName = request.getParameter("shipName");	
	
	%>
	
	</body>
	

</html>

