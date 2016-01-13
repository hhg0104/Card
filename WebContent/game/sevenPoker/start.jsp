<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="game.sevenPoker.PokerBean"%>
<%@ page import="game.sevenPoker.Deck"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Deck dc = Deck.getInstance();
	PokerBean pk = PokerBean.getInstance();
	int point = pk.getpMoney();
%>
<%
	try {
		pk.setBetMoney(Integer.parseInt((String) request
				.getParameter("betMoney")));
		pk.setInitBetMoney(pk.getBetMoney());
	} catch (Exception i) {
%>
<script>
	alert("숫자만 입력해 주십시오.");
	history.go(-1);
</script>
<%
	}
	if (pk.getBetMoney() > point) {
%>
<script>
	alert("배팅금액이 소지하신 돈보다 많습니다.");
	history.go(-1);
</script>
<%
	}
%>
<script>
	function initCard() {
		url = "./initCard.jsp";
		window
				.open(
						url,
						"_blank",
						"width=1000, height=700, directories=no, resizable=yes, location=no, left=150, top=100");
		self.close();
	}
	document.go.start.focus();
</script>
<%
	dc.setting();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>start</title>
</head>
<body background="/game/images/browserbg.png" text="white">
	<br>
	<br>
	<center>
		<div style="font-family: stencil bt; fontsize: 100px; color: red">
			<font size="20px">Game Start</font>
		</div>
		<Br> <b>당신의 현재 포인트는 <%=pk.getpMoney()%> 원이고, 배팅 금액은 <%=pk.getBetMoney()%>
			원입니다.<br> <br> 그럼 게임을 시작하겠습니다.
		</b>
		<form name="go">
			<input type="button" name="start" value="Start!!"
				onclick="initCard()">
		</form>
</body>
</html>
<script>
	document.go.start.focus();
</script>