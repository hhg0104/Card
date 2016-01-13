<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="game.blackJack.*"%>
<script>
	function refresh() {
		opener.document.location.reload();
		self.close();
	}
</script>
<%
	Deck dc = Deck.getInstance();
	EvenInsurance ei = EvenInsurance.getInstance();
	BlackJackBean bj = BlackJackBean.getInstance();
	bj.setPMoney(bj.getPMoney() - (bj.getBetMoney() / 5));
	ei.setInsure(false);
%>
<html>
<head>
<title>Insurance Fail</title>
</head>
<body background="/game/images/bg.png">
	<center>
		<br> <b>Insurance에 실패하였습니다. 보험에 건 돈을 잃으며, 게임은 정상적으로 진행됩니다.</b>
		<form name="re">
			<input type="button" name="result" value="확인" onclick="refresh()" />
		</form>
</body>
</html>
<script>
	document.re.result.focus();
</script>
