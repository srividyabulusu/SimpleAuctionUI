<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Start Bid Price</title>
<link href="style.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<form id="form" action="listStBid" onclick="#" method="post">
	 	<fieldset>
			<legend><b><i>Please enter the following information</i></b></legend>
		 	<table>
		 		<tr>
		 			<td><label>Enter Id of Listing you want to make changes to:  </label> </td>
		 			<td><input type="number" name="listId" id="listId" autofocus required placeholder="111"> </td>
		 		</tr>
		 		<tr>
		 			<td><label>Enter New Starting Bid for the Listing: </label> </td>
		 			<td><input type="number" name="startBid" id="startBid" placeholder="e.g: used"> </td>
		 		</tr>
		 		<tr>
		 			<td id="submit"><input type="submit" value="submit"> </td>
		 		</tr>
		 	</table>
	 	</fieldset>
	 </form>
</body>
</html>