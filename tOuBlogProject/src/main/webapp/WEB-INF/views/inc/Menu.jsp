
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
	color: red !important;
}

.Fixed {
	position: fixed;
	top: 0px;
	width: 55%;
	height: 50px;
	background-color: white;
	z-index: 8999;
	opacity: 0.85;
}

#headerStick {
	width: 100%;
	height: 38px;
	background-color: #111;
	margin-bottom: 30px;
	top: 0px;
}
</style>
<body>
	<div id="headerStick"></div>

	<br>
	<div class="container" style="max-width: 90%;">
		<a href="http://localhost:8081/web/" style="text-decoration: none;"><h2>tOu
				Infomation Blog</h2></a> <br>
		<!-- Nav tabs -->

		<div id="TopMenu">
			<ul class="nav" role="tablist"
				style=" margin-bottom: 15px;">
				<li class="nav-item"><a class="nav-link" id="home" href="#home"><b>Home</b></a></li>
				<li class="nav-item"><a class="nav-link" href="#" id="profile"><b>Profile</b></a></li>
				<li class="nav-item"><a class="nav-link" href="#" id="project"><b>Project</b></a></li>
				<li class="nav-item"><a class="nav-link" href="#" id=""><b>Info</b></a></li>
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

				//305
				// 168일때 상단바 고정
				/* alert("navOffset = " + jbOffset);
				alert("scroll = " + height); */
				if (height >= 134) {
					$('.nav').addClass('Fixed');
				} else {
					$('.nav').removeClass('Fixed');
				}
			});

			// 클릭시 해당 컨텐츠로 스크롤이동
			var currenturl = $(location).attr('href');
			$('#project').click(function() {
				if(currenturl== "http://localhost:8081/web/" || currenturl=="http://localhost:8081/web/#home"){
					$("html").animate({
						scrollTop : 305
					}, 500);
				}
				
			});

			$('#profile').click(function() {
				if(currenturl== "http://localhost:8081/web/" || currenturl=="http://localhost:8081/web/#home"){
					$("html").animate({
					scrollTop : 132
				}, 500);
				}
			});

			$('#home').click(function() {
				if(currenturl== "http://localhost:8081/web/" || currenturl=="http://localhost:8081/web/#home"){
					
				$("html").animate({
					scrollTop : 0
				}, 500);
				}
			});
		});
	</script>

</body>
</html>
