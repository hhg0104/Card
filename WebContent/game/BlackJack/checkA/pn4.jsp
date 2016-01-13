<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="game.blackJack.BlackJackBean"%>
<%@ page import="game.blackJack.Deck"%>
<%@ page import="game.blackJack.CheckA"%>
<%
	BlackJackBean bj = BlackJackBean.getInstance();
	Deck dc = Deck.getInstance();
	CheckA ca = CheckA.getInstance();
	int ps = dc.getPSum();
%>
<c:if test="<%=ca.getPn4() == 1%>">
	<script>
		opener.document.location.reload();
		self.close();
	</script>
</c:if>
<html>
<head>
<title>A선택</title>
</head>
<body background="/Gamble/game/images/bg.png">
	<center>
		<b>네번째 카드 'A'를 어떤 숫자로 사용하시겠습니까?</b><br>
		<br> <input type="button" value="   1   " name="choice1"
			onclick="location.href='choice1_4.jsp'">&nbsp;&nbsp;&nbsp; <input
			type="button" value="   11   " name="choice11"
			onclick="location.href='choice11_4.jsp'">
</body>
</html>

<script>
	document.choice.choice1.focus();
</script>


