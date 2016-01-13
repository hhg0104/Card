<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="game.blackJack.Deck"%>
<%@ page import="game.blackJack.BlackJackBean"%>
<%
	BlackJackBean bj=BlackJackBean.getInstance();
	Deck dc=Deck.getInstance();
	
%>
<html>
<head><title>딜러 카드</title></head>
<body background="/Card/game/images/bg.png">
<c:choose>
<c:when test="<%=bj.getD2()==null%>">
<%dc.stayCard(); %>
<input type="button" name="get" value="딜러의 두번째 카드를 오픈합니다." onClick="refresh()">
</c:when>

<c:when test="<%=bj.getD2()!=null%>">
<%dc.stayCard(); %>
<input type="button" name="get" value="딜러가 카드를 한장 더 받습니다." onClick="refresh()">
</c:when>
</c:choose>

</body>
</html>
<script>
document.getCard.get.focus();
function refresh(){
opener.document.location.reload();
self.close();
}
</script>

