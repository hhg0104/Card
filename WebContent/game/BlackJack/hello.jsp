<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="game.blackJack.BlackJackBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("euc-kr");

	BlackJackBean bj = BlackJackBean.getInstance();
	
	bj.setName((String) request.getParameter("name"));
	
	bj.setPMoney(1000000);
%>
<script>
	function checkBet() {
		var frm = document.forms(0);
		if (frm.betMoney.value == "" || frm.betMoney.value == 0) {
			alert("금액을 입력해 주십시오.");
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
		<p>
			<b>안녕하세요. <%=bj.getName()%>님!! 잘오셨습니다.
			</b>
		</p>
		<p>
			이제 당신이 베팅할 급액을 입력해 주십시오.<br>
		</p>
		<form action="start.jsp" method="post" name="bet"
			onsubmit="return checkBet()">
			<input type="text" size="10" name="betMoney"><br>
			<br> <input type="submit" value="입력완료!">
		</form>
</body>
</html>
<script>
	document.bet.betMoney.focus();
</script>
