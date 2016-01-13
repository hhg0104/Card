<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="game.blackJack.Deck"%>
<%@ page import="game.blackJack.Result"%>
<%@ page import="game.blackJack.BlackJackBean"%>
<%@ page import="game.blackJack.CheckA"%>
<%
	CheckA ca = CheckA.getInstance();

	Deck dc = Deck.getInstance();

	Result re = Result.getInstance();

	BlackJackBean bj = BlackJackBean.getInstance();

	re.evenMoney();

	int betMoney = re.betMoney();

	int pMoney = bj.getPMoney();
%>
<script>
	function refresh() {
		opener.document.location.reload();
		self.close();
	}
</script>

<html>
<head>
<title>결과</title>
</head>
<body background="/game/images/result.png" text="#4FC9DE">
	<center>
		<div style="font-family: stencil bt; fontsize: 100px">
			<font color="black" size="15px"><b>EVEN MONEY</b></font> <br>배팅금액의
			1배만을 받습니다.
		</div>
		<br>
		<br>
		<table border="1">
			<tr>
				<td>현재 자산</td>
				<td><%=pMoney%>(+<%=betMoney%>)</td>
			</tr>
			<tr>
				<td>배팅금액</td>
				<td><%=betMoney%></td>
			</tr>
		</table>

		<%
			dc.setting();
			ca.setting();
		%>
		<form name="re">
			<input type="button" name="result" value="계속하기" onclick="refresh()" />
		</form>
</body>
</html>
<script>
	document.re.result.focus();
</script>
