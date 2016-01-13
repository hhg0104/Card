<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="game.blackJack.Deck"%>
<%@ page import="game.blackJack.Result"%>
<%@ page import="game.blackJack.BlackJackBean"%>
<%@ page import="game.blackJack.CheckA"%>
<%@ page import="game.blackJack.EvenInsurance"%>
<%
	EvenInsurance is = EvenInsurance.getInstance();
	CheckA ca = CheckA.getInstance();
	Deck dc = Deck.getInstance();
	Result re = Result.getInstance();
	BlackJackBean bj = BlackJackBean.getInstance();
	int betMoney = bj.getBetMoney();
	int pMoney = bj.getPMoney();
%>
<script>
	function refresh() {
		opener.document.location.reload();
		self.close();
	}
	function quit() {
		if (confirm("그만 하시겠습니까?") == true) {
			self.close();
			opener.close();
		} else {
			return;
		}
	}
</script>

<html>
<head>
<title>결과</title>
</head>
<body background="/game/images/result.png" text="#4FC9DE">
	<center>
		<div style="font-family: stencil bt; fontsize: 100px">
			<font size="15px">Insurance <br>Success!!
			</font>
		</div>
		<br>Insurance 성공으로 배팅금액을 <br>잃지 않았습니다. <br> <br>
		<table border="1">
			<tr>
				<td>현재 자산</td>
				<td><%=bj.getPMoney()%>(+0)</td>
			</tr>
			<tr>
				<td>배팅 금액</td>
				<td><%=bj.getBetMoney()%></td>
			</tr>
		</table>
		<%
			dc.setting();
			ca.setting();
			is.setInsure(false);
		%>
		<form name="re">
			<input type="button" name="result" value="계속하기" onclick="refresh()" />
			<input type="button" value="그만하기" onclick="quit()">
		</form>
</body>
</html>
<script>
	document.re.result.focus();
</script>
