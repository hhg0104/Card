<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="game.blackJack.Deck"%>
<%@ page import="game.blackJack.CheckA"%>
<%
	Deck dc = Deck.getInstance();
	CheckA ca = CheckA.getInstance();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		dc.setContinue(1);

		dc.setting();
		ca.setting();
	%>
</body>
</html>
<meta http-equiv="Refresh" content="0;url=result.jsp">