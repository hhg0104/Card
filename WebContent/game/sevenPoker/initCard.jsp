<%@page import="game.blackJack.BlackJackBean"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="game.sevenPoker.PokerBean"%>
<%@ page import="game.sevenPoker.Deck"%>
<%@ page import="game.sevenPoker.result"%>
<%
	PokerBean pk = PokerBean.getInstance();
	result re = new result();
	Deck dc = Deck.getInstance();
	int betMoney = pk.getBetMoney();
	betMoney += pk.getRaceMoney();
	pk.setRaceMoney(0);
	pk.setBetMoney(betMoney);
%>

<html>
<head>
<title>시작</title>
</head>

<body background="/game/images/pannel.png">
	<center>
		<div style="font-family: stencil bt;">
			<font size="4px">DEALER</font>
		</div>
		<Br>
		<div
			style="display: inline; position: relative; top: 0px; left: 100px;">
			<div
				style="display: inline; position: relative; top: 0px; left: 0px;">
				<div id="img1"
					style="display: inline; position: relative; top: 0px; left: 0px;">
					<img width="130" height="200" src="images/<%=pk.getD1()%>.png">
				</div>

				<c:if test="<%=pk.getD2() == null%>">
					<div id="img1"
						style="display: inline; position: relative; top: 0px; left: -80px;">
						<img width="130" height="200" src="images/back.png">
					</div>
				</c:if>
				<c:if test="<%=pk.getD2() != null%>">
					<div id="img1"
						style="display: inline; position: relative; top: 0px; left: -80px;">
						<img width="130" height="200" src="images/<%=pk.getD2()%>.png">
					</div>
				</c:if>
				<c:if test="<%=pk.getD3() == null%>">
					<div id="img1"
						style="display: inline; position: relative; top: 0px; left: -160px;">
						<img width="130" height="200" src="images/back.png">
					</div>
				</c:if>
				<c:if test="<%=pk.getD3() != null%>">
					<div id="img1"
						style="display: inline; position: relative; top: 0px; left: -160px;">
						<img width="130" height="200" src="images/<%=pk.getD3()%>.png">
					</div>
				</c:if>
			</div>

			<div
				style="display: inline; position: relative; top: 0px; left: -50px">
				<c:if test="<%=pk.getD4() != null%>">
					<div id="img1"
						style="display: inline; position: relative; top: 0px; left: 0px;">
						<img width="130" height="200" src="images/<%=pk.getD4()%>.png">
					</div>
				</c:if>

				<c:if test="<%=pk.getD5() != null%>">
					<div id="img1"
						style="display: inline; position: relative; top: 0px; left: -80px;">
						<img width="130" height="200" src="images/<%=pk.getD5()%>.png">
					</div>
				</c:if>

				<c:if test="<%=pk.getD6() != null%>">
					<div id="img1"
						style="display: inline; position: relative; top: 0px; left: -160px;">
						<img width="130" height="200" src="images/<%=pk.getD6()%>.png">
					</div>
				</c:if>

				<c:if test="<%=pk.getD7() != null%>">
					<div id="img1"
						style="display: inline; position: relative; top: 0px; left: -240px;">
						<img width="130" height="200" src="images/<%=pk.getD7()%>.png">
					</div>
				</c:if>
			</div>
		</div>
		<br> <br> <br>
		<div style="font-family: stencil bt;">
			<font size="4px">PLAYER</font>
		</div>
		<Br>
		<div
			style="display: inline; position: relative; top: 0px; left: 100px;">
			<div
				style="display: inline; position: relative; top: 0px; left: 0px;">
				<div id="img1"
					style="display: inline; position: relative; top: 0px; left: 0px;">
					<img width="130" height="200" src="images/<%=pk.getP1()%>.png">
				</div>

				<div id="img1"
					style="display: inline; position: relative; top: 0px; left: -80px;">
					<img width="130" height="200" src="images/<%=pk.getP2()%>.png">
				</div>

				<div id="img1"
					style="display: inline; position: relative; top: 0px; left: -160px;">
					<img width="130" height="200" src="images/<%=pk.getP3()%>.png">
				</div>
			</div>

			<div
				style="display: inline; position: relative; top: 0px; left: -50px">
				<c:if test="<%=pk.getP4() != null%>">
					<div id="img1"
						style="display: inline; position: relative; top: 0px; left: 0px;">
						<img width="130" height="200" src="images/<%=pk.getP4()%>.png">
					</div>
				</c:if>

				<c:if test="<%=pk.getP5() != null%>">
					<div id="img1"
						style="display: inline; position: relative; top: 0px; left: -80px;">
						<img width="130" height="200" src="images/<%=pk.getP5()%>.png">
					</div>
				</c:if>

				<c:if test="<%=pk.getP6() != null%>">
					<div id="img1"
						style="display: inline; position: relative; top: 0px; left: -160px;">
						<img width="130" height="200" src="images/<%=pk.getP6()%>.png">
					</div>
				</c:if>

				<c:if test="<%=pk.getP7() != null%>">
					<div id="img1"
						style="display: inline; position: relative; top: 0px; left: -240px;">
						<img width="130" height="200" src="images/<%=pk.getP7()%>.png">
					</div>
				</c:if>
			</div>
		</div>
		<br> <br>
		<c:if test="<%=pk.getD7() != null & pk.getD2() == null%>">
			<input type="button" value="딜러카드 보기"
				onclick="location.href='call.jsp'">
		</c:if>
		<c:if test="<%=pk.getD2() == null%>">
			<c:if test="<%=pk.getpMoney() != pk.getBetMoney()%>">
				<input type="button" value="Race" onclick="race()">
			</c:if>
			<c:if test="<%=pk.getD7() == null%>">
				<input type="button" value="Call" onclick="location.href='call.jsp'">
			</c:if>
			<c:if test="<%=pk.getpMoney() != pk.getBetMoney()%>">
				<input type="button" value="Die" onclick="die()">
			</c:if>
			<c:if test="<%=pk.getpMoney() != pk.getBetMoney()%>">
				<input type="button" value="All-In" onclick="allin()">
			</c:if>
			<br>
		</c:if>
		<c:if test="<%=pk.getD2() != null%>">
			<input type="button" id="resultBtn" value="결과 보기" onclick="result()">
		</c:if>
		<br>
		<table border="1">
			<tr>
				<td><b>현재 자산</b></td>
				<td><%=pk.getpMoney()%></td>
			</tr>
			<tr>
				<td><b>배팅 금액</b></td>
				<td><%=pk.getBetMoney()%></td>
			</tr>
		</table>
</body>
</html>

<script>
	function race() {
		url = "race.jsp";
		window
				.open(
						url,
						"post",
						"width=500, height=100, directories=no, location=no, menubar=no, border=0, toolbar=no, status=no, left=500, top=300");
	}

	function die() {
		url = "die.jsp";
		window
				.open(
						url,
						"post",
						"width=500, height=250, directories=no, location=no, menubar=no, border=0, toolbar=no, status=no, left=500, top=150");
	}

	function result() {
		
		document.getElementById('resultBtn').disabled = true;
		
		url = "result.jsp";
		window
				.open(
						url,
						"post",
						"width=400, height=400, directories=no, location=no, menubar=no, border=0, toolbar=no, status=no, left=500, top=200");
	}

	function allin() {
		url = "allIn.jsp";
		window
				.open(
						url,
						"post",
						"width=500, height=100, directories=no, location=no, menubar=no, border=0, toolbar=no, status=no, left=500, top=300");
	}
</script>
