<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<html>
<head>
<title>이름 설정하기</title>
<script language="JavaScript">
	function checkName() {

		if (document.setName.name.value == "") {
			alert("이름을 입력해 주십시오.");
			document.setName.name.focus();
			return false;
		}
	}
</script>
<body background="/game/images/browserbg.png" text="white">
	<center>
		<div style="font-family: stencil bt; fontsize: 100px; color: red">
			<font size="20px">Set Name</font>
			<form name="setName" action="start.jsp" method="get"
				onsubmit="return checkName()">
				<p>
					<b>당신의 이름은 무엇입니까?</b>
				</p>
				<input type="text" name="name" size="10"><br> <br>
				<input type="submit" value="입력완료">
			</form>
		</div>
</body>
</head>
</html>
<script>
	document.setName.name.focus();
</script>