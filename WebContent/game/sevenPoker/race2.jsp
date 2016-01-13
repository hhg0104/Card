<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="game.sevenPoker.PokerBean"%>
<%@ page import="game.sevenPoker.Deck"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	PokerBean pk = PokerBean.getInstance();
	Deck dc = Deck.getInstance();

	dc.addDCard();
	dc.addPCard();
%>

<%
	try {
		pk.setRaceMoney(Integer.parseInt((String) request
				.getParameter("raceMoney")));
	} catch (Exception i) {
%>
<script>
	alert("숫자만 입력해 주십시오.");
	history.go(-1);
</script>
<%
	}
	if ((pk.getBetMoney() + pk.getRaceMoney()) > pk.getpMoney()) {
%>
<script>
	alert("배팅금액이 현재 가진돈을 초과할 수 없습니다.");
	history.go(-1);
</script>
<%
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<meta http-equiv="Refresh" content="0;url=race.jsp">