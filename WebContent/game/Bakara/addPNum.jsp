<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="game.bakara.BakaraBean"%>
<%@ page import="game.bakara.CardShuffleHandler"%>
<%@ page import="game.bakara.ResultHandler"%>
<%
	BakaraBean bk = BakaraBean.getInstance();
	CardShuffleHandler dc = CardShuffleHandler.getInstance();
	ResultHandler re = ResultHandler.getInstance();
	bk.setP3((String) dc.getCK(dc.getPNum()));
	dc.removeP();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
</head>
<body background="/game/images/bg.png">
	<center>
		<input type="button" value="Player가 세번째 카드를 받습니다." name="addPNum"
			onClick="restore()">
</body>
</html>

<script>
	function restore() {
		opener.document.location.reload();
		self.close();
	}
</script>