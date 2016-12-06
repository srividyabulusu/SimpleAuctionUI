<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Database</title>
	<link href="style.css" type="text/css" rel="stylesheet" />
	<script src="script.js"></script>	
</head>
<body>
	
	 <form id="form" action="search" onclick="#" method="post">
	 	<fieldset>
			<legend><b><i>Select one of the following options</i></b></legend>
			<input type="radio" name="search" value="product" required>Search listings based on product names<br />
			<input type="radio" name="search" value="seller">Search listings based on Seller ID<br />
			<input type="radio" name="search" value="userratings">Search for specific user and show comments as well as ratings<br />
			<input type="radio" name="search" value="useravgratings">Search for specific user and show average rating<br />
			<input type="radio" name="search" value="allBids">Show all bids for a given listing<br />
			<input type="radio" name="search" value="back">Go back to previous Menu<br /><br />
			<input type="submit" id="submit" value="submit">
		</fieldset>
	 </form>
	 
</body>
</html>