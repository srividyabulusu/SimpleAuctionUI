<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Customer Age</title>
<link href="style.css" type="text/css" rel="stylesheet" />
<script src="script.js"></script>
</head>
<body>
	<form id="form" action="custAge" onclick="#" method="post">
	 	<fieldset>
			<legend><b><i>Please enter the following information</i></b></legend>
		 	<table>
		 		<tr>
		 			<td><label>Enter Id of Customer you want to make changes to:  </label> </td>
		 			<td><input type="number" name="custId" id="custId" autofocus required placeholder="used"> </td>
		 		</tr>
		 		<tr>
		 			<td><label>Enter updated age of Customer: </label> </td>
		 			<td><input type="number" name="age" id="age" placeholder="e.g: 20"> </td>
		 		</tr>
		 		<tr>
		 			<td id="submit"><input type="submit" value="submit"> </td>
		 		</tr>
		 	</table>
	 	</fieldset>
	 </form>
</body>
</html>