<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="game.bakara.BakaraBean"%>
<%@ page import="game.bakara.CardShuffleHandler"%>
<%@ page import="game.bakara.ResultHandler"%>
<%
	BakaraBean bk = BakaraBean.getInstance();
	CardShuffleHandler dc = CardShuffleHandler.getInstance();
	ResultHandler re = ResultHandler.getInstance();
	int point = bk.getpMoney();
%>

<%
	try {
		bk.setBetMoney(Integer.parseInt((String) request
				.getParameter("betMoney")));
	} catch (Exception i) {
%>
<script>
	alert("숫자만 입력해 주십시오.");
	history.go(-1);
</script>
<%
	}
	if (bk.getBetMoney() > point) {
%>
<script>
	alert("배팅금액이 소지하신 돈보다 많습니다.");
	history.go(-1);
</script>
<%
	}
%>

<html>
<head>
<title></title>
</head>
<body>
	<%
		try {
			if (Integer.parseInt(request.getParameter("betting")) == 1) {
				re.setBanker(1);
			} else if (Integer.parseInt(request.getParameter("betting")) == 2) {
				re.setPlayer(1);
			} else {
			}

		} catch (Exception e) {
	%>
	<script>
		alert("배팅할 사이드를 선택해 주십시오.");
		history.go(-1);
	</script>
	<%
		}
	%>
</body>
</html>
<%
	dc.setting();
%>
<meta http-equiv="Refresh" content="0;url=prepare.jsp">
