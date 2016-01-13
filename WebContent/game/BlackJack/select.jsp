<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="game.blackJack.BlackJackBean"%>
<%@ page import="game.blackJack.Deck"%>
<%@ page import="game.blackJack.EvenInsurance"%>
<%@ page import="java.util.Vector"%>
<%@ page import="game.blackJack.Result"%>
<%@ page import="game.blackJack.Stay"%>
<%@ page import="game.blackJack.DoubleDown"%>
<%@ page import="game.blackJack.CheckA"%>


<%
	DoubleDown d = DoubleDown.getInstance();
	Stay stay = new Stay();
	EvenInsurance is = EvenInsurance.getInstance();
	Deck dc = Deck.getInstance();
	Result re = Result.getInstance();
	BlackJackBean bj = BlackJackBean.getInstance();
	boolean isFirstBlackJack = dc.checkBlackJackAtFirstTime(bj.getP1(),
			bj.getP2());
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script>
	function pSum21() {
		alert("이미 Black Jack 상태입니다.");
		return false;
	}
	function even() {
		url = "/game/BlackJack/even.jsp";
		window
				.open(url, "post",
						"width=325, height=300, directories=no, location=no, left=550, top=190");
	}
</script>
<title></title>
</head>
<body>
	<center>
		<form name="init">
			<table align="center">
				<c:if test="<%=d.getDouble() == true%>">
					<tr>
						<td align="center"><font color="#DB0000"><b>Double
									Down<br>상태
							</b></font></td>
					</tr>
				</c:if>
				<c:if test="<%=is.EvenCheck()%>">
					<tr>
						<td align="center"><font color="#DB0000"><b>'Even
									Money'<br>옵션 선택가능
							</b></font></td>
						<br>
					</tr>
				</c:if>
				<c:if
					test="<%=is.EvenCheck() == false
						&& is.InsuranceCheck() == true
						&& is.getInsure() == false && !isFirstBlackJack%>">
					<tr>
						<td align="center"><font color="#DB0000"><b>'Insurance'<br>옵션
									선택가능
							</b></font></td>
						<br>
					</tr>
				</c:if>
				<c:if test="<%=is.getInsure() == true%>">
					<tr>
						<td align="center"><font color="#DB0000"><b>'Insurance'<br>옵션
									상태
							</b></font></td>
						<br>
					</tr>
				</c:if>

			</table>


			<table>
				<c:if test="<%=dc.getPSum() == 21 || isFirstBlackJack%>">
					<%
						dc.setPSum(21);
					%>
					<tr>
						<td align="center"><input type="button" name="hit"
							value="   Hit   " onClick="pSum21()"></td>
					</tr>
				</c:if>
				<c:if test="<%=dc.getPSum() != 21 && d.getDouble() == false%>">
					<tr>
						<td align="center"><input type="button" name="hit"
							value="   Hit   "
							onClick="javascript:window.location='/game/BlackJack/hit.jsp'"></td>
					</tr>
				</c:if>
				<c:if
					test="<%=dc.getPSum() != 21 && d.getDouble() == true
						&& bj.getP3() == null%>">
					<tr>
						<td align="center"><input type="button" name="hit"
							value="   Hit   "
							onClick="javascript:window.location='/game/BlackJack/hit.jsp'"></td>
					</tr>
				</c:if>

				<tr>
					<c:if
						test="<%=(d.getDouble() == false)
						|| (d.getDouble() == true && bj.getP3() != null)%>">
						<td align="center"><input type="button" value=" Stay "
							onClick="openDealerGetCard()"></td>
					</c:if>
				</tr>

				<tr>
					<td align="center"><input type="button" value="룰 체크"
						onClick="ruleCheck()"></td>
				</tr>

				<c:if test="<%=is.EvenCheck()%>">
					<tr>
						<td align="center"><input type="button" value="Even Money"
							onclick="even()"></td>
					</tr>
				</c:if>

				<c:if
					test="<%=is.InsuranceCheck() && !d.getDouble()
						&& !isFirstBlackJack%>">
					<tr>
						<td align="center"><input type="button" value="Insurance"
							onclick="insureGetCard()"></td>
					</tr>
				</c:if>

				<c:if test="<%=!d.getDouble() && bj.getP3() == null && !isFirstBlackJack%>">
					<tr>
						<td align="center"><input type="button" value="DoubleDown"
							onclick="doubleDown()"></td>
					</tr>
				</c:if>
			</table>
		</form>
		<table border="1">
			<tr>
				<td>현재 자산</td>
			</tr>
			<tr>
				<td><%=bj.getPMoney()%></td>
			</tr>
			<tr>
				<td>배팅금액</td>
			</tr>
			<tr>
				<td><%=bj.getBetMoney()%></td>
			</tr>
		</table>
</body>
</html>
<script>
	document.init.hit.focus();
</script>
</body>
</html>

