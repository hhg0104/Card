<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="game.sevenPoker.PokerBean"%>
<%@ page import="game.sevenPoker.Deck"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
Deck dc = Deck.getInstance();
PokerBean pk = PokerBean.getInstance();
%>
<c:if test="<%=pk.getRaceMoney()!=0%>">
	<script>
	opener.document.location.reload();
	self.close();
	</script>
</c:if>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body background="/game/images/bg.png" text="black">
	<center>

올리실 배팅 금액을 입력해 주십시오.<br>
(현재 배팅금액: <%=pk.getBetMoney() %>)

<form name="race" action="race2.jsp" onsubmit="return checkRace()">
	<input type="text" name="raceMoney" size="10">
	<input type="submit" value="Race">
</form>
</body>
</html>
<script>
function checkRace(){
	if(document.race.raceMoney.value==""){
		alert("금액을 입력하여 주십시오.");
		return false;
	}
}
</script>