<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="game.blackJack.DoubleDown"%>
<%
	DoubleDown d = DoubleDown.getInstance();

	d.doubleOn();
%>
<script>
	function refresh() {
		opener.document.location.reload();
		self.close();
	}
</script>

<html>
<head>
<title>DoubleDown</title>
</head>
<body background="../images/bg.png">
	<center>
		<b>카드 한장만을 더 받을 수 있으며,<br> <br> 배팅액을 2배로 올립니다.
		</b>
		<form name="re">
			<input type="button" name="result" value="확인" onclick="refresh()" />
		</form>
</body>
</html>
<script>
	document.re.result.focus();
</script>
