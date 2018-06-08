
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<style>
a:link {
	color: black;
	text-decoration: none;
}

a {
	color: black;
	text-decoration: none;
}

a:hover {
	color: #3B00DB;
	text-decoration: underline;
}

.active {
	color: red;
	text-decoration: underline;
}



.Fixed {
	position: fixed;
	top: 0px;
	width: 100%;
	height: 50px;
	background-color: white;
	z-index:9999;
	opacity: 0.85;
}
#headerStick{
	width:100%;
	height: 38px;
	background-color: #111;
	margin-bottom: 30px;
	top: 0px;
}
</style>
<body>
	<div id="headerStick"></div>
	
	<br><div class="container" style="max-width: 90%; ">
		<a href="http://localhost:8081/web/" style="text-decoration: none;"><h2>tOu
				Infomation Blog</h2></a> <br>
		<!-- Nav tabs -->

		<div id="TopMenu">
			<ul class="nav" role="tablist"
				style="float: right; margin-bottom: 15px; width:100%;">
				<li class="nav-item"><a class="nav-link active" href="#home"><b>Home</b></a></li>
				<li class="nav-item"><a class="nav-link" href="#menu1"><b>Profile</b></a></li>
				<li class="nav-item"><a class="nav-link" href="#menu2"><b>Project</b></a></li>
				<li class="nav-item"><a class="nav-link" href="#menu2"><b>Info</b></a></li>
			</ul>
		</div>

	</div>
	<script>
		$(document).ready(function() {

			$('.nav-link').click(function() {
				$('.nav-link').removeClass('active');
				$(this).addClass('active');
			});
			$(window).scroll(function() {
				var height = $(document).scrollTop();
				// 168일때 상단바 고정
				/* alert("navOffset = " + jbOffset);
				alert("scroll = " + height); */
				if (height >= 134) {
					$('.nav').addClass('Fixed');
				}else{
					$('.nav').removeClass('Fixed');
				}
			});
		});
	</script>

</body>
</html>
