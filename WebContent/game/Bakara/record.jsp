<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="game.bakara.ResultHandler"%>
<%@ page import="java.util.List"%>
<%
	ResultHandler re = ResultHandler.getInstance();
	List<String> rList=re.getRecord();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body background="/game/images/bg.png">
	<center>
		B=Banker, P=Player, D=Draw<br>
		<br>
		<table border="1" width="100px">
			<%
				for(int i=0; i<rList.size(); i++) {
			%>
			<tr>
				<td><%=i+1%></td>
				<td><%=rList.get(i)%></td>
			</tr>
			<%
				}
			%>
		</table>
		<br> <input type="button" value="닫기" onclick="Close()">
</body>
</html>

<script>
	function Close() {
		self.close();
	}
</script>