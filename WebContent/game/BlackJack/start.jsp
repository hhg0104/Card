<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="game.blackJack.Deck"%>
<%@ page import="game.blackJack.BlackJackBean"%>
<%@ page import="java.util.Vector"%>
<%@ page import="game.blackJack.CheckA"%>
<%
	BlackJackBean bj = BlackJackBean.getInstance();
	int point = bj.getPMoney();
%>

<%
	try {
		bj.setBetMoney(Integer.parseInt((String) request
				.getParameter("betMoney")));
	} catch (Exception i) {
%>
<script>
	alert("숫자만 입력해 주십시오.");
	history.go(-1);
</script>
<%
	}
	if (bj.getBetMoney() > point) {
%>
<script>
	alert("배팅금액이 소지하신 돈보다 많습니다.");
	history.go(-1);
</script>
<%
	}
%>
<%
	Deck dc = Deck.getInstance();
%>
<html>
<head>
<title>시작</title>
</head>
<body background="/game/images/browserbg.png" text="white">
	<center>
		<div style="font-family: stencil bt; fontsize: 100px; color: red">
			<font size="20px">Game Start</font>
		</div>
		<Br>

		<form action="black.jsp" name="start" method="post">
			<p>
				감사합니다. <b><%=bj.getName()%></b>님의 베팅금액은 <b>${param.betMoney}원
					입니다.</b>
			</p>
			<b><%=bj.getName()%></b>님의 초기 자금은 <b><%=bj.getPMoney()%></b> 입니다.
			<p>모든 설정을 마쳤습니다.</p>
			<p>
				이제 블랙잭을 시작하겠습니다.<br>
			</p>
			<p>
				<input type="button" name="submit" value="확인"
					onclick="forwardGame()">
			</p>
		</form>
</body>
</html>
<%
	CheckA ca = CheckA.getInstance();
	dc.setting();
	ca.setting();
%>
<script>
	function forwardGame() {
		url = "/black.tiles";
		window
				.open(
						url,
						"_blank",
						"width=1000, height=600, directories=no, resizable=no, location=no, left=200, top=50");
		self.close();
	}
	document.start.submit.focus();
</script>
