<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>블랙잭 룰</title>
</head>
<body background="/game/images/rule.gif">
	<center>
		<div style="font-family:stencil bt; fontsize:100px; color:red"><font size="10px">BLACK JACK</font></div><Br>

		<br>

		<p>
			블랙잭(Black Jack) 게임은 카드의 합이 21에 가장 가까운 쪽이 이기게 되는 게임입니다.<br>
			<br> 그래서 Twenty One(21)이라고도 합니다.<br>
			<br> 블랙잭 게임은 21을 최고의 숫자로 하며 최초에 2장씩 분배하는 카드 중, 다음의 카드가 조합 되는 경우를
			<br>
			<br> 블랙잭이라고 하며 배팅한 금액의 1.5배를 지불합니다.(A는 1 또는 11로 유리한 쪽으로 계산함)<br>
			<br> A+10, A+J, A+Q, A+K<br>
			<br>
		</p>

		<p>
			블랙잭 게임의 최초의 카드(Initial 2 Card) 분배 방법은 딜러의 맞은 편 왼쪽부터 플레이어에게 1장씩을 분배하고,
			<br>
			<br> 딜러도 1장을 갖으며, 이어서 두 번째 카드를 다시 플레이어들에게 1장씩 분배 후 딜러도 두 번째 카드를
			가집니다.<br>
			<br> 게임 진행 중, 플레이어들이 21을 초과하면 반드시 오버(Over) 또는 버스트(Bust)라고 알려주어야
			하며, 배팅한 금액(칩)은 딜러가 가져옵니다. <br>
			<br> 또한, 딜러의 카드합이 17이상 되면, 딜러는 더 이상 카드를 받을 수 없게 됩니다.<br>
			<br> 블랙잭은 몇 개의 게임 옵션(Game Option)과 게임 진행 용어가 있는데, 게임에 적용되는 용어와
			룰(Rule)은 아래와 같습니다.
		</p>

		<p>
			<b>[용어]</b><br>
			<br> <b>`Hit(힛)</b> - 플레이어가 추가 카드를 더 원할 때 딜러에게 표현하는 용어<br>
			<br> <b>`Stay(스테이)</b> - 플레이어가 추가 카드를 더 이상 원하지 않을 때 딜러에게 표현하는 용어<br>
			<br> <b>`Bust(버스트)</b> - 플레이어가 추가 카드를 받아서(Hit) 21을 초과하였을 때 딜러가
			표현하는 용어(Over라고도 함)<br>
			<br> <b>`Push(푸시)</b> - 딜러와 플레이어의 카드 합이 같을 때 딜러가 표현하는 용어(Tie라고도
			함)
		<p>
		<p>
			<b>[게임 룰<Rule>]</b><br>
			<br> <b>`Insurance(보험)</b>-딜러의 카드가 A일 때 블랙잭이 될 가능성이 있다고 판단될 때 거는
			것. <br>
			<br> <b>`Surrender(게임포기)</b>-플레이어의 카드 숫자가 좋지 않아서 원금의 반을 포기하고 게임을
			중단하는 것.<br>
			<br> <b>`Double Down(2배)</b>-처음에 건 배팅액 만큼 다시 걸어서 게임을 진행하는 것.<br>
			<br> <b>`Even Money(1배)</b>-플레이어가 블랙잭이고 딜러의 카드가 A일 때, 딜러가 블랙잭이
			되면 비겨서 1.5배를 주지 않으므로 
			
			<br><br>1배만 받겠냐고 플레이어에게 묻는 것.
		<p>
			<input type="button" value="닫기"
				onclick="_close()" />
</body>
</html>
<script>
function _close(){
		self.close();
	}
</script>