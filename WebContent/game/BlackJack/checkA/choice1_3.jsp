<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="game.blackJack.Deck"%>
<%@ page import="game.blackJack.CheckA"%>

<%
	Deck dc = Deck.getInstance();
	CheckA ca = CheckA.getInstance();
	dc.setPSum(dc.getPSum() + 1);
	ca.setPn3(1);
%>
<meta http-equiv="Refresh" content="0;url=pn3.jsp">