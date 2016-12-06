<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Listing Info</title>
<link href="style.css" type="text/css" rel="stylesheet" />
<script src="script.js"></script>
</head>
<body>
	<form id="form" action="updateList" onclick="#" method="post">
	 	<fieldset>
			<legend><b><i>Please select one of the options below:</i></b></legend>
			<input type="radio" name="updateList" value="status" required>Change the status of listing <br />
			<input type="radio" name="updateList" value="delete">Delete a listing <br />
			<input type="radio" name="updateList" value="stBid">Change the start bid price <br />
			<input type="radio" name="updateList" value="back">Go back to Previous Menu <br />
			<input type="submit" id="submit" value="submit">
		</fieldset>
	 </form>
</body>
</html>