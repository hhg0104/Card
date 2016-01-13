<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="game.blackJack.BlackJackBean"%>
<%@ page import="game.blackJack.Deck"%>
<%
	Deck dc = Deck.getInstance();
	dc.stayCard();
%>
<html>
<head>
<title></title>
</head>
<body>
	<meta http-equiv="Refresh" content="0;url=initCard.jsp">
</body>
</html>