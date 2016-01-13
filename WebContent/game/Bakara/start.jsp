<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="game.bakara.BakaraBean"%>
<%@ page import="game.bakara.CardShuffleHandler"%>
<%
	BakaraBean bk = BakaraBean.getInstance();
	CardShuffleHandler dc = CardShuffleHandler.getInstance();
	bk.setName((String) request.getParameter("name"));
	bk.setpMoney(1000000);
	dc.setDefault();
%>

<html>
<head>
<script language="javascript">
	function forwardStart() {
		url = "./initCard.jsp";
		window
				.open(
						url,
						"_blank",
						"width=700, height=500, directories=no, resizable=yes, location=no, left=300, top=100");
		self.close();
	}
</script>
<title>시작</title>
</head>
<body background="/game/images/browserbg.png" text="white">
	<center>
		<div style="font-family: stencil bt; fontsize: 100px; color: red">
			<font size="20px">Game Start</font>
		</div>
		<Br> 안녕하세요 <b><%=bk.getName()%></b>님 반갑습니다. <br> <br>현재
		<%=bk.getName()%>님이 가지고 계신 포인트는 총 <b>1,000,000</b>원 입니다.<br> <br>
		스타트를 누르시면 게임을 시작하겠습니다.
		<form action="./initCard.jsp" method="post" name="init">
			<input type="button" name="start" value="start!!"
				onclick="forwardStart()">
		</form>
</body>
</html>
<script>
	document.init.start.focus();
</script>