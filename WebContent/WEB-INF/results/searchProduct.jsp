<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search listings based on product names</title>
	<link href="style.css" type="text/css" rel="stylesheet" />
	<script src="script.js"></script>	
</head>
<body>
	 
	 <form id="form" action="searchListProd" onclick="#" method="post">
	 	<fieldset>
			<legend><b><i>Please enter the Product Name to search information</i></b></legend>
		 	<table>
		 		<tr>
		 			<td><label>Product Name: </label> </td>
		 			<td><input type="text" name="name" id="name" autofocus required placeholder="Customer Name"> </td>
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