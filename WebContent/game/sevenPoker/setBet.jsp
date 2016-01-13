<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="game.sevenPoker.PokerBean"%>
<%@ page import="game.sevenPoker.Deck"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Deck dc = Deck.getInstance();
	PokerBean pb = PokerBean.getInstance();

	pb.setName((String) request.getParameter("name"));
	pb.setpMoney(1000000);
%>
<script>
	function checkPrepare() {
		if (document.bet.betMoney.value == ""
				|| document.bet.betMoney.value == 0) {
			alert("금액을 입력해 주십시오.");
			document.bet.betMoney.focus();
			return false;
		}
	}
</script>
<html>
<head>
<title>Hello</title>
</head>
<body background="/game/images/browserbg.png" text="white">

	<center>
		<div style="font-family: stencil bt; fontsize: 100px; color: red">
			<font size="20px">Set Betting</font>
		</div>
		<Br>

		<form action="start.jsp" method="post" name="bet"
			onsubmit="return checkPrepare()">
			<p>
				<b>안녕하세요. <%=pb.getName()%>님!! 잘오셨습니다.
				</b>
			</p>
			<p>
				이제 당신이 베팅할 급액을 입력해 주십시오.<br>
			</p>
			<input type="text" size="10" name="betMoney" onkeydown="checknum()">원
			<p>
				<input type="submit" value="입력완료!">
			</p>
		</form>
</body>
</html>
<script>
	document.bet.betMoney.focus();
</script>
