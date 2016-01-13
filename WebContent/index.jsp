<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
    <head>
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <title></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Parallax Content Slider with CSS3 and jQuery" />
        <meta name="keywords" content="slider, animations, parallax, delayed, easing, jquery, css3, kendo UI" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="/main/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="/main/css/style.css" />
		<script type="text/javascript" src="/main/js/modernizr.custom.28468.js"></script>
		<link href='http://fonts.googleapis.com/css?family=Economica:700,400italic' rel='stylesheet' type='text/css'>
		<noscript>
			<link rel="stylesheet" type="text/css" href="/main/css/nojs.css" />
		</noscript>
<script type="text/javascript">
	// Please don't use this code on your site
	/* var _gaq = _gaq || [];
	_gaq.push(['_setAccount', 'UA-7243260-2']);
	_gaq.push(['_trackPageview']); */

	(function() {
			var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	})();
	
</script>

    </head>
    <body>
        <div class="container">
			<div id="da-slider" class="da-slider">
				<div class="da-slide">
					<h2>Black Jack</h2>
					<p>ºí·¢Àè</p>
					<a href="#" class="da-link" onclick="BlackJack()">Play BlackJack</a>
					<div class="da-img"> <img src="/main/images/blackbg.png" alt="image01" /></div>
				</div>
				<div class="da-slide">
					<h2>Bakara</h2>
					<p>¹ÙÄ«¶ó</p>
					<a href="#" class="da-link" onclick="Bakara()">Play Bakara</a>
					<div class="da-img"><img src="/main/images/bakarabg.png" alt="image01" /></div>
				</div>
				<div class="da-slide">
					<h2>Seven Poker</h2>
					<p>¼¼ºì Æ÷Ä¿</p>
					<a href="#" class="da-link" onclick="SevenPoker()">Play Seven Poker</a>
					<div class="da-img"><img src="/main/images/pokerbg.png" alt="image01" /></div>
				</div>
				<nav class="da-arrows">
					<span class="da-arrows-prev"></span>
					<span class="da-arrows-next"></span>
				</nav>
			</div>
        </div>
		<script type="text/javascript" src="/main/js/jquery.min.js"></script>
		<script type="text/javascript" src="/main/js/jquery.cslider.js"></script>
		<script type="text/javascript">
			$(function() {
			
				$('#da-slider').cslider();
			
			});
		</script>	
    </body>
</html>

<script>
	function BlackJack(){
		url="/game/BlackJack/index.jsp";
		window.open(url,"_blank","width=700, height=250, directories=no, resizable=yes, location=no, left=300, top=200");
	}
	function Bakara(){
		url="/game/Bakara/index.jsp";
		window.open(url,"_blank","width=700, height=250, directories=no, resizable=yes, location=no, left=300, top=200");
	}
	function SevenPoker(){
		url="/game/sevenPoker/index.jsp";
		window.open(url,"_blank","width=700, height=250, directories=no, resizable=yes, location=no, left=300, top=200");
	}
</script>