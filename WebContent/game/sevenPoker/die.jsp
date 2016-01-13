<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="game.sevenPoker.PokerBean"%>
<%@ page import="game.sevenPoker.Deck"%>
<%@ page import="game.sevenPoker.result"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	result re = new result();
	Deck dc = Deck.getInstance();
	PokerBean pk = PokerBean.getInstance();
	int initBetMoney = pk.getInitBetMoney();
	int point = pk.getpMoney();
	re.die();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body background="/game/images/result.png" text="#4FC9DE">
	<center>

		<div style="font-family: stencil bt; color: black">
			<font size="20px">DIE</font>
		</div>
		<br> 현재 <b><%=pk.getName()%></b>님의 포인트는 <b><%=pk.getpMoney()%></b>입니다.<br>
		<br> 배팅은 처음 설정하셨던 <b><%=pk.getBetMoney()%></b>로 진행됩니다.<br> <br>
		<form name="die">
			<%
				if (point < initBetMoney) {
			%>
			<font color="red"><b>현재 소지하신 금액이 배팅금액보다 적습니다. 충전을 해주십시오.</b></font><br>
			<br>
			<%
				} else if (point >= initBetMoney) {
			%>
			<input type="button" name="result" value="계속하기" onclick="refresh()" />
			<%
				}
			%>
			<input type="button" value="그만하기" onclick="quit()">
		</form>
</body>
</html>
<%
	dc.setting();
%>
<script>
	function quit() {
		if (confirm("그만 하시겠습니까?") == true) {
			self.close();
			opener.close();
		} else {
			return;
		}
	}
	function refresh() {
		opener.document.location.reload();
		self.close();
	}
	document.die.go.focus();
</script>