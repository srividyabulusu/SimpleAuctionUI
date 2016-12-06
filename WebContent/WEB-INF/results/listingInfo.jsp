<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listing Information</title>
<link href="style.css" type="text/css" rel="stylesheet" />
<script src="script.js"></script>
</head>
<body>
 	<form id="form" action="listingInfo" onclick="#" method="post">
	 	<fieldset>
			<legend><b><i>Please enter the following information</i></b></legend>
		 	<table>
		 		<tr>
		 			<td><label>Enter Condition (new/used):  </label> </td>
		 			<td><input type="text" name="cond" id="cond" autofocus required placeholder="used"> </td>
		 		</tr>
		 		<tr>
		 			<td><label>Enter Status (active/completed): </label> </td>
		 			<td><input type="text" name="status" id="status" placeholder="active"> </td>
		 		</tr>
		 		<tr>
		 			<td><label>Enter starting bid: </label> </td>
		 			<td><input type="number" name="startBid" id="startBid" placeholder="20"> </td>
		 		</tr>
		 		<tr>
		 			<td><label>Enter start date (DD-MON-YYYY): </label> </td>
		 			<td><input type="text" name="stDate" id="stDate" placeholder="DD-MM-YYYY"> <br /> </td>
		 		</tr>
		 		<tr>
		 			<td><label>Enter end date (DD-MON-YYYY): </label> </td>
		 			<td><input type="text" name="endDate" id="endDate" placeholder="DD-MM-YYYY"> <br /> </td>
		 		</tr>
		 		<tr>
		 			<td><label>Enter product id: </label> </td>
		 			<td><input type="number" name="pdId" id="pdId" placeholder="20"> </td>
		 		</tr>
		 		<tr>
		 			<td><label>Enter seller id: </label> </td>
		 			<td><input type="number" name="sellerId" id="sellerId" placeholder="20"> </td>
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