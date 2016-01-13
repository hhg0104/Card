<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="game.bakara.BakaraBean"%>
<%@ page import="game.bakara.CardShuffleHandler"%>
<%@ page import="game.bakara.ResultHandler"%>
<%
	BakaraBean bk = BakaraBean.getInstance();
	CardShuffleHandler dc = CardShuffleHandler.getInstance();
	ResultHandler re = ResultHandler.getInstance();
	re.getMoney();
%>
<c:if test="<%=dc.getContinue() == 0%>">
	<%
		re.record();
	%>
</c:if>
<c:if test="<%=dc.getContinue() == 1%>">
	<script>
		opener.document.location.reload();
		self.close();
	</script>
</c:if>
<html>
<head>
<title>결과</title>
</head>
<body background="/game/images/result.png" text="#4FC9DE">
	<center>
		<c:if test="<%=dc.resultDNum() > dc.resultPNum()%>">
			<img src="/game/images/banker.png">
		</c:if>
		<c:if test="<%=dc.resultDNum() < dc.resultPNum()%>">
			<img src="/game/images/player.png">
		</c:if>
		<c:if test="<%=dc.resultDNum() == dc.resultPNum()%>">
			<img src="/game/images/draw.png">
		</c:if>
		<br>
		<br>
		<table border="1">
			<tr>
				<td colspan="2" align="center"><c:if
						test="<%=re.winMoney() == 1%>">
						<font color="black"><b>승자를 맞추셨습니다.</b><br> 뱅커의 승리이므로
							5%의 커미션을 제한 배팅금액을 얻으셨습니다.</font>
					</c:if> <c:if test="<%=re.winMoney() == 2%>">
						<font color="black"><b>승자를 틀리셨습니다.</b></font>
					</c:if> <c:if test="<%=re.winMoney() == 3%>">
						<font color="black"><b>승자를 틀리셨습니다.</b><br></font>
					</c:if> <c:if test="<%=re.winMoney() == 4%>">
						<font color="black"><b>승자를 맞추셨습니다.</b></font>
					</c:if> <c:if test="<%=re.whoWin() == 5%>">
						<font color="black"><b>비겼습니다.</b></font>
					</c:if></td>
			</tr>
			<tr>
				<td>현재 자산:</td>
				<td><%=bk.getpMoney()%></td>
			</tr>
			<tr>
				<td>이전 배팅금액:</td>
				<td><%=bk.getBetMoney()%></td>
			</tr>
		</table>
		<form name="result" action="/game/Bakara/continue.jsp">
			<c:if test="<%=bk.getpMoney() > 0%>">
				<input type="submit" name="go" value="계속하기">
			</c:if>
			<c:if test="<%=bk.getpMoney() <= 0%>">
				<font color="red">현재 소지하신 금액이 없습니다. <br>충전후 다시 이용해 주십시오
				</font>
				<br>
				<br>
			</c:if>
			<input type="button" value="그만하기" onclick="quit()"> <input
				type="button" value="승,패 현황" onclick="record()">
		</form>
</body>
</html>
<script>
	function quit() {
		if (confirm("그만 하시겠습니까?") == true) {
			self.close();
			opener.close();
		} else {
			return;
		}
	}

	function record() {
		url = "/game/Bakara/record.jsp";
		window
				.open(url, "_blank",
						"width=100, height=700, left=810, scrollbars=yes, resizable=yes");
	}
	document.result.go.focus();
</script>