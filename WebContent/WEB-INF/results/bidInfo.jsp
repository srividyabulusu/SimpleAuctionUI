<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bid Information</title>
<link href="style.css" type="text/css" rel="stylesheet" />
<script src="script.js"></script>
</head>
<body>
	<form id="form" action="bidInfo" onclick="#" method="post">
	 	<fieldset>
			<legend><b><i>Please enter the following information</i></b></legend>
		 	<table>
		 		<tr>
		 			<td><label>Enter Amount:  </label> </td>
		 			<td><input type="number" name="bid" id="bid" autofocus required placeholder="10"> </td>
		 		</tr>
		 		<tr>
		 			<td><label>Enter Listing_id: </label> </td>
		 			<td><input type="number" name="listId" id="listId" placeholder="111"> </td>
		 		</tr>
		 		<tr>
		 			<td><label>Enter Buyer_id: </label> </td>
		 			<td><input type="number" name="buyerId" id="buyerId" placeholder="2"> </td>
		 		</tr>
		 		<tr>
		 			<td id="submit"><input type="submit" value="submit"> </td>
		 		</tr>
		 	</table>
	 	</fieldset>
	 </form>
</body>
</html>