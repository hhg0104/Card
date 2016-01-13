<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="game.sevenPoker.PokerBean"%>
<%@ page import="game.sevenPoker.Deck"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Deck dc = Deck.getInstance();
	PokerBean pk = PokerBean.getInstance();
	pk.setBetMoney(pk.getpMoney());
%>
<c:if test="<%=pk.getpMoney() == pk.getBetMoney()%>">
	<script>
		alert("현재 가진 돈을 모두 배팅합니다.");
		opener.document.location.reload();
		self.close();
	</script>
</c:if>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body background="/Card/game/images/bg.png" text="black">

</body>
</html>
