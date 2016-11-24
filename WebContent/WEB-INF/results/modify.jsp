<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Modify Database</title>
	<link href="style.css" type="text/css" rel="stylesheet" />
	<script src="script.js"></script>	
</head>
<body>
	
	 <form id="form" action="modify" onclick="#" method="post">
	 	<fieldset>
			<legend><b><i>Select one of the following options</i></b></legend>
			<input type="radio" name="modify" value="newCustomer" required>Enter information for new customers (buyers/sellers) <br />
			<input type="radio" name="modify" value="newListing">Enter information for listings <br />
			<input type="radio" name="modify" value="newBid">Enter information for bids <br />
			<input type="radio" name="modify" value="updateCustomer">Update/delete information on customers <br />
			<input type="radio" name="modify" value="updateListing">Update/delete information on listings <br />
			<input type="radio" name="modify" value="updateBid">Update/delete information on bids <br />
			<input type="radio" name="modify" value="back">Go back to previous menu <br />
			<input type="submit" id="submit" value="submit" onclick="ModifyValidation();">
		</fieldset>
	 </form>
	 
</body>
</html>