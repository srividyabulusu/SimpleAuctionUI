<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Customer Information</title>
<link href="style.css" type="text/css" rel="stylesheet" />
<script src="script.js"></script>
</head>
<body>			
	<form id="form" action="updateCust" onclick="#" method="post">
	 	<fieldset>
			<legend><b><i>Please select one of the options below:</i></b></legend>
			<input type="radio" name="updateCust" value="name" required>Change the customer name <br />
			<input type="radio" name="updateCust" value="delete">Delete customer <br />
			<input type="radio" name="updateCust" value="age">Update age <br />
			<input type="radio" name="updateCust" value="back">Go back to Previous Menu <br />
			<input type="submit" id="submit" value="submit">
		</fieldset>
	 </form>
</body>
</html>