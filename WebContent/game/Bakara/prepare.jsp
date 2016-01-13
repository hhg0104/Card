<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="game.bakara.BakaraBean"%>
<%@ page import="game.bakara.CardShuffleHandler"%>
<%@ page import="game.bakara.ResultHandler"%>


<%
	BakaraBean bk = BakaraBean.getInstance();
	CardShuffleHandler dc = CardShuffleHandler.getInstance();
	ResultHandler re = ResultHandler.getInstance();
%>
<c:if test="<%=re.isPlayer() != 0 || re.isBanker() != 0%>">
	<script>
		opener.document.location.reload();
		self.close();
	</script>
</c:if>
<script>
	function checkPrepare() {
		if (document.prepare.betMoney.value == ""
				|| document.prepare.betMoney.value == 0) {
			alert("배팅하실 사이드와 정확한 금액을 입력해 주십시오.");
			document.prepare.betMoney.focus();
			return false;
		}
	}
</script>
<html>
<head>
<center>
	<strong><font size="5" color="red">준비사항</font></strong>
</center>
</head>
<body background="/game/images/bg.png">
	<center>
		<br> 게임을 시작하기에 앞서
		<%=bk.getName()%>님이 Banker와 Player중<br> <br> 배팅하실 쪽을 선택과
		배팅금액을 선택하도록 하겠습니다. <br> <br> 배팅하실쪽을 선택하여 주십시오.
		<form name="prepare" method="post" action="prepare2.jsp"
			onsubmit="return checkPrepare()">
			<b>Banker</b><input type="radio" name="betting" value="1">&nbsp;&nbsp;&nbsp;&nbsp;
			<b>Player</b><input type="radio" name="betting" value="2"> <br>
			<br>
			<c:if test="<%=bk.getpMoney() == 0%>">
				<br>
				<font color="red">현재 소지하신 금액이 없습니다. <br>충전후 다시 이용해 주십시오
				</font>
				<br>
			</c:if>
			<c:if test="<%=bk.getpMoney() != 0%>">
	배팅하실 금액을 입력해 주십시오.<br>
				<br>
				<input type="text" name="betMoney" size="10"> 원<br>
	(현재 자산: <%=bk.getpMoney()%>)<br>
				<br>
				</font>
				<input type="submit" value="입력완료">
			</c:if>
		</form>
</body>
</html>

<script>
	document.prepare.betting.focus();
</script>