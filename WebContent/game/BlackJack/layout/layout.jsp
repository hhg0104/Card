<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<html>
<head>
<title></title>
</head>
<body>
	<table width="100%" cellpadding="0" cellspacing="0" border="1">
	<tr>
		<td width="10%"><tiles:insertAttribute name="select" /></td>
		<td valign="top"><tiles:insertAttribute name="body" /></td>
	</tr>
	</table>
</body>
</html>