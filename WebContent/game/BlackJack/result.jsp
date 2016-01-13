<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="game.blackJack.Deck"%>
<%@ page import="game.blackJack.Result"%>
<%@ page import="game.blackJack.BlackJackBean"%>
<%@ page import="game.blackJack.CheckA"%>
<%@ page import="game.blackJack.DoubleDown"%>
<%
	DoubleDown d =  DoubleDown.getInstance();
	CheckA ca = CheckA.getInstance();
	Deck dc = Deck.getInstance();
	Result re =  Result.getInstance();
	BlackJackBean bj = BlackJackBean.getInstance();
	int result = re.result();
	int betMoney = bj.getBetMoney();
	String name = bj.getName();
%>
<c:if test="<%=dc.getContinue() == 0%>">
	<%
		re.winMoney();
	%>
</c:if>
<c:if test="<%=dc.getContinue() == 1%>">

	<script>
		opener.document.location.reload();
		self.close();
	</script>

	<%
		dc.setContinue(0);
	%>
</c:if>
<script>
	function refresh() {
		opener.document.location.reload();
		self.close();
	}
	function quit() {
		if (confirm("그만 하시겠습니까?") == true) {
			self.close();
			opener.close();
		} else {
			return;
		}
	}
</script>

<html>
<head>
<title>결과</title>
</head>
<body background="/game/images/result.png" text="#4FC9DE">
	<center>
		<c:choose>
			<c:when test="<%=result == -1%>">
				<div style="font-family: stencil bt; fontsize: 100px">
					<font size="15px">Black Jack!!</font>
				</div>
				<Br>
				베팅액의 1.5배를 받습니다.	
				<table border="1" border="1">
					<tr>
						<td>현재 자산</td>
						<td><%=bj.getPMoney()%>(+<%=betMoney * 3 / 2%>)</td>
					</tr>
					<tr>
						<td>배팅금액</td>
						<td><%=betMoney%></td>
					</tr>
				</table>
			</c:when>
			<c:when test="<%=result == 0%>">
				<div style="font-family: stencil bt; fontsize: 100px; color: black">
					<font size="15px">DRAW</font>
				</div>
				<table border="1">
					<tr>
						<td>현재 자산</td>
						<td><%=bj.getPMoney()%>(+0)</td>
					</tr>
					<tr>
						<td>배팅금액</td>
						<td><%=betMoney%></td>
					</tr>
				</table>
			</c:when>
			<c:when test="<%=result == 1%>">
				<div style="font-family: stencil bt; fontsize: 100px; color: black">
					<font size="15px">YOU LOSE</font>
				</div>
				<table border="1">
					<tr>
						<td>현재 자산</td>
						<td><%=bj.getPMoney()%>(-<%=betMoney%>)</td>
					</tr>
					<tr>
						<td>배팅금액</td>
						<td><%=betMoney%></td>
					</tr>
				</table>
			</c:when>
			<c:when test="<%=result == 2%>">
				<div style="font-family: stencil bt; fontsize: 100px; color: black">
					<font size="15px">YOU WIN</font>
				</div>
				<table border="1">
					<tr>
						<td>현재 자산</td>
						<td><%=bj.getPMoney()%>(+<%=betMoney%>)</td>
					</tr>
					<tr>
						<td>배팅금액</td>
						<td><%=betMoney%></td>
					</tr>
				</table>
			</c:when>
			<c:when test="<%=result == 3%>">
				<div style="font-family: stencil bt; fontsize: 100px; color: black">
					<font size="15px">YOU BUSTED</font>
				</div>
				<table border="1">
					<tr>
						<td>현재 자산</td>
						<td><%=bj.getPMoney()%>(-<%=betMoney%>)</td>
					</tr>
					<tr>
						<td>배팅금액</td>
						<td><%=betMoney%></td>
					</tr>
				</table>
			</c:when>
			<c:when test="<%=result == 4%>">
				<div style="font-family: stencil bt; fontsize: 100px; color: black">
					<font size="15px">DEALER BUSTED</font>
				</div>
				<table border="1">
					<tr>
						<td>현재 자산</td>
						<td><%=bj.getPMoney()%>(+<%=betMoney%>)</td>
					</tr>
					<tr>
						<td>배팅금액</td>
						<td><%=betMoney%></td>
					</tr>
				</table>
			</c:when>
			<c:when test="<%=result == 5%>">
				<div style="font-family: stencil bt; fontsize: 100px; color: black">
					<font size="15px">YOU WIN</font>
				</div>
				<table border="1">
					<tr>
						<td>현재 자산</td>
						<td><%=bj.getPMoney()%>(+<%=betMoney%>)</td>
					</tr>
					<tr>
						<td>배팅금액</td>
						<td><%=betMoney%></td>
					</tr>
				</table>
			</c:when>
			<c:when test="<%=result == 6%>">
				<div style="font-family: stencil bt; fontsize: 100px; color: black">
					<font size="15px">YOU LOSE</font>
				</div>
				<table border="1">
					<tr>
						<td>현재 자산</td>
						<td><%=bj.getPMoney()%>(-<%=betMoney%>)</td>
					</tr>
					<tr>
						<td>배팅금액</td>
						<td><%=betMoney%></td>
					</tr>
				</table>
			</c:when>
			<c:otherwise>
				<div style="font-family: stencil bt; fontsize: 100px; color: black">
					<font size="15px">DRAW..</font>
				</div>
				<table border="1">
					<tr>
						<td>현재 자산</td>
						<td><%=bj.getPMoney()%>(+0)</td>
					</tr>
					<tr>
						<td>배팅금액</td>
						<td><%=betMoney%></td>
					</tr>
				</table>
			</c:otherwise>
		</c:choose>
		<c:if test="<%=d.getDouble() == true%>">
			<%
				bj.setBetMoney(bj.getBetMoney() / 2);
				d.setDouble(false);
			%>
		</c:if>

		<form name="re">
			<%
				if (bj.getPMoney() < betMoney) {
			%>
			<font color="red"><b>현재 소지하신 금액이 배팅금액보다 적습니다. 충전을 해주십시오.</b></font><br>
			<br>
			<%
				} else if (bj.getPMoney() >= betMoney) {
			%>
			<input type="button" name="result" value="계속하기"
				onclick="location.href='/game/BlackJack/continue.jsp'" />
			<%
				}
			%>
			<input type="button" value="그만하기" onclick="quit()">
		</form>
</body>
</html>
<script>
	document.re.result.focus();
</script>
