<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search List Result</title>
<link href="style.css" type="text/css" rel="stylesheet" />
	<script src="script.js"></script>	
</head>
<body>
	 <form id="form" action="searchResult" onclick="#" method="post">
	 	<fieldset>
			<legend><b><i>Search Results</i></b></legend>
		 	<table>
		 		<tr>
		 		listing_id	condition	status	start_bid	start_time	end_time	pid	seller_id
		 		</tr><br/>
		 		<tr>
		 		<s:iterator status="stat" value="list">
				<s:property value="listing_id"/> <s:property value="condition"/> <s:property value="status"/> <s:property value="start_bid"/>
				<s:property value="start_time"/> <s:property value="end_time"/> <s:property value="pid"/> <s:property value="seller_id"/> <br/>
				</s:iterator> <br/>
				</tr>
		 		<tr>
		 		<input type="radio" name="modify" value="back">Go back to previous menu <br /><br />
		 		</tr>
		 		<tr>
		 			<td id="submit"><input type="submit" value="submit"> </td>
		 		</tr>
		 	</table>
	 	</fieldset>
	 </form>
	 

</body>
</html>