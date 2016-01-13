<%@page import="game.blackJack.BlackJackBean"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="game.bakara.BakaraBean"%>
<%@ page import="game.bakara.CardShuffleHandler"%>
<%@ page import="game.bakara.ResultHandler"%>
<%
	BakaraBean bk = BakaraBean.getInstance();
	CardShuffleHandler dc = CardShuffleHandler.getInstance();
	ResultHandler re = ResultHandler.getInstance();
	dc.setCardType();
	dc.setContinue(0);
	
	int dResult = dc.resultDNum();
	int pResult = dc.resultPNum();
%>

<c:if
	test="<%=bk.getP3() != null & re.addBCase() == true
						& bk.getD3() == null%>">
	<script>
		url = "./addDNum.jsp";
		window
				.open(url, "post",
						"width=330, height=50, directories=no, location=no, left=500, top=230");
	</script>
</c:if>

<c:if test="<%=bk.getP3() != null & re.addBCase() == false%>">
	<script>
		url = "./result.jsp";
		window
				.open(url, "post",
						"width=300, height=300, directories=no, location=no, left=500, top=250");
	</script>
</c:if>
<c:if test="<%=bk.getP3() != null & bk.getD3() != null%>">
	<script>
		url = "./result.jsp";
		window
				.open(url, "post",
						"width=300, height=300, directories=no, location=no, left=500, top=250");
	</script>
</c:if>

<c:if
	test="<%=(re.isBanker() == 1 || re.isPlayer() == 1)
						& bk.getP3() == null & re.addPCase() == false%>">
	<script>
		url = "./result.jsp";
		window
				.open(url, "post",
						"width=300, height=300, directories=no, location=no, left=500, top=250");
	</script>
</c:if>

<c:if test="<%=bk.getP1() == null%>">
	<script>
		url = "./prepare.jsp";
		window
				.open(
						url,
						"post",
						"width=500, height=350, directories=no, location=no, menubar=no, border=0, toolbar=no, status=no, left=450, top=150");
	</script>

</c:if>
<html>
<head>
<title>시작</title>
</head>

<body background="/game/images/pannel.png">
	<center>
		<b>Banker <font color="red"><%=dResult%></font></b>
		<table>
			<tr>
				<c:choose>
					<c:when test="<%=bk.getD1() == null%>">
						<td><font size="10"> <img width="130" height="200"
								src="../images/back.png">&nbsp;
						</font></td>
					</c:when>
					<c:when test="<%=bk.getD1() != null%>">
						<td><font size="10"> <img width="130" height="200"
								src="../images/<%=bk.getD1()%>.png">&nbsp;
						</font></td>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="<%=bk.getD2() == null%>">
						<td><font size="10"> <img width="130" height="200"
								src="../images/back.png">&nbsp;
						</font></td>
					</c:when>
					<c:when test="<%=bk.getD2() != null%>">
						<td><font size="10"> <img width="130" height="200"
								src="../images/<%=bk.getD2()%>.png">&nbsp;
						</font></td>
					</c:when>
				</c:choose>
				<c:if test="<%=bk.getD3() != null%>">
					<td><font size="10"> <img width="130" height="200"
							src="../images/<%=bk.getD3()%>.png">&nbsp;
					</font></td>
				</c:if>
			</tr>
		</table>
		<b>Player <font color="red"><%=pResult%></font></b>
		<table>
			<tr>

				<c:choose>
					<c:when test="<%=bk.getP1() == null%>">
						<td><font size="10"> <img width="130" height="200"
								src="../images/back.png">&nbsp;
						</font></td>
					</c:when>
					<c:when test="<%=bk.getP1() != null%>">
						<td><font size="10"> <img width="130" height="200"
								src="../images/<%=bk.getP1()%>.png">&nbsp;
						</font></td>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="<%=bk.getP2() == null%>">
						<td><font size="10"> <img width="130" height="200"
								src="../images/back.png">&nbsp;
						</font></td>
					</c:when>
					<c:when test="<%=bk.getP2() != null%>">
						<td><font size="10"> <img width="130" height="200"
								src="../images/<%=bk.getP2()%>.png">&nbsp;
						</font></td>
					</c:when>
				</c:choose>
				<c:if test="<%=bk.getP3() != null%>">
					<td><font size="10"> <img width="130" height="200"
							src="../images/<%=bk.getP3()%>.png">&nbsp;
					</font></td>
				</c:if>
			</tr>
		</table>
		</form>
</body>
</html>
<c:if
	test="<%=(re.isBanker() == 1 || re.isPlayer() == 1)
						& re.addPCase() == true & bk.getP3() == null%>">
	<script>
		url = "./addPNum.jsp";
		window
				.open(
						url,
						"post",
						"width=330px, height=20px, directories=no, location=no, left=500, top=230 margin=0");
	</script>
</c:if>
