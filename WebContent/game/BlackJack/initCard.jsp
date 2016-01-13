<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="game.blackJack.BlackJackBean"%>
<%@ page import="game.blackJack.Deck"%>
<%@ page import="game.blackJack.EvenInsurance"%>
<%@ page import="java.util.Vector"%>
<%@ page import="game.blackJack.Result"%>
<%@ page import="game.blackJack.Stay"%>
<%@ page import="game.blackJack.CheckA"%>
<%@ page import="game.blackJack.DoubleDown"%>
<%
	DoubleDown d = DoubleDown.getInstance();
	CheckA ca = CheckA.getInstance();
	Stay stay = new Stay();
	EvenInsurance is = EvenInsurance.getInstance();
	Deck dc = Deck.getInstance();
	Result re = Result.getInstance();
	BlackJackBean bj = BlackJackBean.getInstance();
	boolean isFirstBlackJack = dc.checkBlackJackAtFirstTime(bj.getP1(),
			bj.getP2());
%>
<script language="JavaScript">
	function openDealerGetCard() {

		url = "/game/BlackJack/dealerGetCard.jsp";

		window
				.open(url, "post",
						"width=310, height=20, directories=no, location=no, left=580, top=230");
	}
	function insureGetCard() {

		url = "/game/BlackJack/insureGetCard.jsp";

		window
				.open(url, "post",
						"width=325, height=50, directories=no, location=no, left=580, top=230");
	}
</script>

<html>
<head>
<title>카드 돌리기</title>
</head>
<body background="/game/images/pannel.png">

	<c:if
		test="<%=stay.stay() & re.checkBJ() == false
						& is.getInsure() == false%>">
		<script>
			url = "/game/BlackJack/dealerGetCard.jsp";
			window
					.open(url, "post",
							"width=310, height=40, directories=no, location=no, left=580, top=230");
		</script>

	</c:if>
	<center>
		<br> <b>딜러 카드 <font color="red"><%=dc.getDSum()%></font></b> <br>
		<form>
			<table>
				<tr>
					<td><font size="10"> <img width="130" height="200"
							src="/game/images/<%=bj.getD1()%>.png">&nbsp;
					</font></td>
					<c:choose>
						<c:when test="<%=bj.getD2() == null%>">
							<td><font size="10"> <img width="130" height="200"
									src="/game/images/back.png">&nbsp;
							</font></td>
						</c:when>
						<c:when test="<%=bj.getD2() != null%>">
							<td><font size="10"> <img width="130" height="200"
									src="/game/images/<%=bj.getD2()%>.png">&nbsp;
							</font></td>
						</c:when>
					</c:choose>
					<td><c:if test="<%=bj.getD3() != null%>">
							<td><font size="10"> <img width="130" height="200"
									src="/game/images/<%=bj.getD3()%>.png">&nbsp;
							</font></td>
						</c:if> <c:if test="<%=bj.getD4() != null%>">
							<td><font size="10"> <img width="130" height="200"
									src="/game/images/<%=bj.getD4()%>.png">&nbsp;
							</font></td>
						</c:if> <c:if test="<%=bj.getD5() != null%>">
							<td><font size="10"> <img width="130" height="200"
									src="/game/images/<%=bj.getD5()%>.png">&nbsp;
							</font></td>
						</c:if>
				</tr>
			</table>
		</form>



		<c:choose>
			<c:when test="<%=dc.getDSum() > 16 && is.getInsure() == false%>">
				<script>
					url = "/game/BlackJack/result.jsp";
					window
							.open(url, "post",
									"width=325, height=270, directories=no, location=no, left=580, top=200");
				</script>
			</c:when>

			<c:when test="<%=re.checkBJ() == true%>">
				<script>
					url = "/game/BlackJack/result.jsp";
					window
							.open(url, "post",
									"width=325, height=270, directories=no, location=no, left=580, top=200");
				</script>
			</c:when>

			<c:when test="<%=dc.getPSum() > 21%>">
				<script>
					url = "/game/BlackJack/result.jsp";
					window
							.open(url, "post",
									"width=325, height=270, directories=no, location=no, left=580, top=200");
				</script>
			</c:when>

			<c:when
				test="<%=is.getInsure() == true
							&& is.InsureSuccess() == true%>">
				<%
					is.setInsure(false);
				%>
				<script>
					url = "/game/BlackJack/insureResult.jsp";
					window
							.open(url, "post",
									"width=325, height=320, directories=no, location=no, left=580, top=200");
				</script>
			</c:when>

			<c:when
				test="<%=is.getInsure() == true
							&& is.InsureSuccess() == false%>">
				<%
					is.setInsure(false);
				%>
				<script>
					url = "/game/BlackJack/insureFail.jsp";
					window
							.open(url, "post",
									"width=325, height=150, directories=no, location=no, left=550, top=200");
				</script>
			</c:when>
		</c:choose>

		<c:if test="<%=isFirstBlackJack%>">
			<b>플레이어 카드 <font color="red">Black Jack!!</font></b>
			<br>
		</c:if>

		<c:if test="<%=!isFirstBlackJack%>">
			<b>플레이어 카드 <font color="red"><%=dc.getPSum()%></font></b>
			<br>
		</c:if>
		<br>

		<table>
			<tr>

				<td><font size="10"> <img width="130" height="200"
						src="/game/images/<%=bj.getP1()%>.png">&nbsp;
				</font></td>
				<td><font size="10"> <img width="130" height="200"
						src="/game/images/<%=bj.getP2()%>.png">&nbsp;
				</font></td>
				<c:if test="<%=bj.getP3() != null%>">
					<td><font size="10"> <img width="130" height="200"
							src="/game/images/<%=bj.getP3()%>.png">&nbsp;
					</font></td>
				</c:if>
				<c:if test="<%=bj.getP4() != null%>">
					<Td><font size="10"> <img width="130" height="200"
							src="/game/images/<%=bj.getP4()%>.png">&nbsp;
					</font></td>
				</c:if>
				<c:if test="<%=bj.getP5() != null%>">
					<td><font size="10"> <img width="130" height="200"
							src="/game/images/<%=bj.getP5()%>.png">&nbsp;
					</font></td>
				</c:if>
			</tr>

		</table>
</body>
</html>

<c:if test="<%=re.checkBJ1() == false%>">
	<c:if test="<%=ca.check() == 1%>">
		<script>
			url = "/game/BlackJack/checkA/pn1.jsp";
			window
					.open(url, "post",
							"width=325, height=120, directories=no, location=no, left=580, top=220");
		</script>
	</c:if>
	<c:if test="<%=ca.check() == 2%>">
		<script>
			url = "/game/BlackJack/checkA/pn2.jsp";
			window
					.open(url, "post",
							"width=325, height=120, directories=no, location=no, left=580, top=220");
		</script>
	</c:if>
	<c:if test="<%=ca.check() == 3%>">
		<script>
			url = "/game/BlackJack/checkA/pn3.jsp";
			window
					.open(url, "post",
							"width=325, height=120, directories=no, location=no, left=580, top=220");
		</script>
	</c:if>
	<c:if test="<%=ca.check() == 4%>">
		<script>
			url = "/game/BlackJack/checkA/pn4.jsp";
			window
					.open(url, "post",
							"width=325, height=120, directories=no, location=no, left=580, top=220");
		</script>
	</c:if>
	<c:if test="<%=ca.check() == 5%>">
		<script>
			url = "/game/BlackJack/checkA/pn5.jsp";
			window
					.open(url, "post",
							"width=325, height=120, directories=no, location=no, left=580, top=220");
		</script>
	</c:if>
</c:if>

