<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Customer Information</title>
	<link href="style.css" type="text/css" rel="stylesheet" />
	<script src="script.js"></script>	
</head>
<body>
	 
	 <form id="form" action="custInfo" onclick="#" method="post">
	 	<fieldset>
			<legend><b><i>Please enter the following information</i></b></legend>
		 	<table>
		 		<tr>
		 			<td><label>Customer Name: </label> </td>
		 			<td><input type="text" name="name" id="name" autofocus required placeholder="Customer Name"> </td>
		 		</tr>
		 		<tr>
		 			<td><label>Customer Age: </label> </td>
		 			<td><input type="number" name="age" id="age" placeholder="e.g: 20"> </td>
		 		</tr>
		 		
		 		<tr>
		 			<td><label>Gender (M/F): </label> </td>
		 			<td><input type="text" name="gender" id="gender"> </td>
		 		</tr>
		 		<tr>
		 			<td><label>Date: </label> </td>
		 			<td><input type="text" name="date" id="date" placeholder="DD-MM-YYYY"> <br /> </td>
		 		</tr>
		 		<tr></tr>
		 		<tr>
		 			<td id="submit"><input type="submit" value="submit"> </td>
		 		</tr>
		 	</table>
	 	</fieldset>
	 </form>
	 
</body>
</html>