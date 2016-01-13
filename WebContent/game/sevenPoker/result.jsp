<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="game.sevenPoker.PokerBean"%>
<%@ page import="game.sevenPoker.Deck"%>
<%@ page import="game.sevenPoker.result"%>
<%
	PokerBean pb = PokerBean.getInstance();
	Deck dc = Deck.getInstance();
	result re = new result();
	re.getResult();
	re.moneyResult();
	int initBetMoney=pb.getInitBetMoney();
	int point=pb.getpMoney();
%>
<html>
<head>
<title>결과</title>
</head>
<body background="/game/images/result.png" text="#4FC9DE">
	<center>

<table border="1">
<c:if test="<%=re.whoWin()==1 %>">
<div style="font-family:stencil bt; color:black"><font size="20px">YOU LOSE</font></div><Br>
</c:if>

<c:if test="<%=re.whoWin()==2 %>">
<div style="font-family:stencil bt; color:black"><font size="20px">YOU WIN</font></div><Br>
</c:if>

<c:if test="<%=re.whoWin()==0 %>">
<div style="font-family:stencil bt; color:black"><font size="20px">DRAW</font></div><Br>
</c:if>
</table><br>
<table border="1">
<tr><td><b><font color="red">Delear:<%=re.getCard_resultD()%></font></b></td></tr>
<tr><td> <b><font color="red">Player:<%=re.getCard_resultP()%></font></b></td></tr></table>
<br>
	현재 <%=pb.getName() %>님의 포인트는 <%=pb.getpMoney() %>입니다.<br><br>
	배팅은 처음 설정하셨던 <%=pb.getBetMoney() %>로 진행됩니다.
	<form name="result">
	<%if(point<initBetMoney){ %>
		<font color="red"><b>현재 소지하신 금액이 배팅금액보다 적습니다. 충전을 해주십시오.</b></font><br><br>
		<%}else if(point>=initBetMoney){ %>
		<input type="button" name="result" value="계속하기"	onclick="refresh()" />
		<%} %>
	<input type="button" value="그만하기" onclick="quit()">
	</form>
</body>
</html>
<%dc.setting(); %>
<script>
	function quit(){
		if (confirm("그만 하시겠습니까?") == true){
			self.close();
			opener.close();
		}else{ 
			return;
		}
	}
	
	function refresh(){
		opener.document.location.reload();
		self.close();
		}
	document.result.go.focus();
</script>

