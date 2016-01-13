<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="game.blackJack.*" %>
<%
	
	BlackJackBean bj=BlackJackBean.getInstance();
%>
<html>
<head>
<title>룰의 설명</title>
</head>
<body background="/game/images/browserbg.png" text="white">
	<form action="" method="post" name="main">
		<center>
			<div style="font-family:stencil bt; fontsize:100px; color:red"><font size="20px">RULE</font></div>

				<br> <br> <b>게임을 시작하기에 앞서 몇가지 준비사항이 있습니다.</b> <br>
				 <br><b>먼저	블랙잭 게임에 대한 룰을 들어 보시겠습니까?</b>
			<br><br><br>
			<div>
				<input type="button" value=" 예 " name="yes"
					onclick="forwardRule()" /> 
					
				<input type="button" value="건너뛰기" 
					onclick="forwardBet()" />
			</div>
	</form>
</body>
</html>
<script>
	document.main.yes.focus();
	
	function forwardRule(){
		url="./rule.jsp";
		window.open(url,"_blank","width=1000, height=700, directories=no, scrollbars=yes, resizable=no, location=no, left=200, top=200");
	}
	function forwardBet(){
		url="./setName.jsp";
		window.open(url,"_blank","width=500, height=290, directories=no, resizable=no, location=no, left=500, top=200");
		self.close();
	}
</script>