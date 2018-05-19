<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>
body {
	position: relative;
	overflow-x: hidden;
}

body, html {
	height: 100%;
}

.nav .open>a, .nav .open>a:hover, .nav .open>a:focus {
	background-color: transparent;
}

/*-------------------------------*/
/*           Wrappers            */
/*-------------------------------*/
#wrapper {
	padding-left: 0;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
}

#wrapper.toggled {
	padding-left: 220px;
}

#sidebar-wrapper {
	z-index: 1000;
	left: 220px;
	width: 0;
	height: 100%;
	margin-left: -220px;
	overflow-y: auto;
	overflow-x: hidden;
	background: #1a1a1a;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
}

#sidebar-wrapper::-webkit-scrollbar {
	display: none;
}

#wrapper.toggled #sidebar-wrapper {
	width: 300px;
}

#page-content-wrapper {
	width: 100%;
}

#wrapper.toggled #page-content-wrapper {
	position: absolute;
	margin-right: -220px;
}

/*-------------------------------*/
/*     Sidebar nav styles        */
/*-------------------------------*/
.sidebar-nav {
	position: absolute;
	top: 0;
	width: 100%;
	margin: 0;
	padding: 0;
	list-style: none;
}

.sidebar-nav li {
	position: relative;
	line-height: 50px;
	display: inline-block;
	width: 100%;
}

.sidebar-nav li:before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	z-index: -1;
	height: 100%;
	width: 3px;
	background-color: #1c1c1c;
	-webkit-transition: width .2s ease-in;
	-moz-transition: width .2s ease-in;
	-ms-transition: width .2s ease-in;
	transition: width .2s ease-in;
}

.sidebar-nav li:first-child a {
	color: #fff;
	background-color: #1a1a1a;
}

.sidebar-nav li:nth-child(2):before {
	background-color: #ec1b5a;
}

.sidebar-nav li:nth-child(3):before {
	background-color: #79aefe;
}

.sidebar-nav li:nth-child(4):before {
	background-color: #314190;
}

.sidebar-nav li:nth-child(5):before {
	background-color: #279636;
}

.sidebar-nav li:nth-child(6):before {
	background-color: #7d5d81;
}

.sidebar-nav li:nth-child(7):before {
	background-color: #ead24c;
}

.sidebar-nav li:nth-child(8):before {
	background-color: #2d2366;
}

.sidebar-nav li:nth-child(9):before {
	background-color: #35acdf;
}

.sidebar-nav li:hover:before, .sidebar-nav li.open:hover:before {
	width: 100%;
	-webkit-transition: width .2s ease-in;
	-moz-transition: width .2s ease-in;
	-ms-transition: width .2s ease-in;
	transition: width .2s ease-in;
}

.sidebar-nav li a {
	display: block;
	color: #ddd;
	text-decoration: none;
	padding: 10px 15px 10px 30px;
}

.sidebar-nav li a:hover, .sidebar-nav li a:active, .sidebar-nav li a:focus,
	.sidebar-nav li.open a:hover, .sidebar-nav li.open a:active,
	.sidebar-nav li.open a:focus {
	color: #fff;
	text-decoration: none;
	background-color: transparent;
}

.sidebar-nav>.sidebar-brand {
	height: 100px;
	font-size: 24px;
	line-height: 80px;
	text-align: center;
}

.sidebar-nav .dropdown-menu {
	position: relative;
	width: 100%;
	padding: 0;
	margin: 0;
	border-radius: 0;
	border: none;
	background-color: #222;
	box-shadow: none;
}

/*-------------------------------*/
/*       Hamburger-Cross         */
/*-------------------------------*/
.hamburger {
	position: fixed;
	top: 20px;
	z-index: 999;
	display: block;
	width: 32px;
	height: 32px;
	margin-left: 20px;
	background: transparent;
	border: none;
}

.hamburger:hover, .hamburger:focus, .hamburger:active {
	outline: none;
}

.hamburger.is-closed:before {
	content: '';
	display: block;
	width: 100px;
	font-size: 14px;
	color: #fff;
	line-height: 32px;
	text-align: center;
	opacity: 0;
	-webkit-transform: translate3d(0, 0, 0);
	-webkit-transition: all .35s ease-in-out;
}

.hamburger.is-closed:hover:before {
	opacity: 1;
	display: block;
	-webkit-transform: translate3d(-100px, 0, 0);
	-webkit-transition: all .35s ease-in-out;
}

.hamburger.is-closed .hamb-top, .hamburger.is-closed .hamb-middle,
	.hamburger.is-closed .hamb-bottom, .hamburger.is-open .hamb-top,
	.hamburger.is-open .hamb-middle, .hamburger.is-open .hamb-bottom {
	position: absolute;
	left: 0;
	height: 4px;
	width: 100%;
}

.hamburger.is-closed .hamb-top, .hamburger.is-closed .hamb-middle,
	.hamburger.is-closed .hamb-bottom {
	background-color: #1a1a1a;
}

.hamburger.is-closed .hamb-top {
	top: 5px;
	-webkit-transition: all .35s ease-in-out;
}

.hamburger.is-closed .hamb-middle {
	top: 50%;
	margin-top: -2px;
}

.hamburger.is-closed .hamb-bottom {
	bottom: 5px;
	-webkit-transition: all .35s ease-in-out;
}

.hamburger.is-closed:hover .hamb-top {
	top: 0;
	-webkit-transition: all .35s ease-in-out;
}

.hamburger.is-closed:hover .hamb-bottom {
	bottom: 0;
	-webkit-transition: all .35s ease-in-out;
}

.hamburger.is-open .hamb-top, .hamburger.is-open .hamb-middle,
	.hamburger.is-open .hamb-bottom {
	background-color: #1a1a1a;
}

.hamburger.is-open .hamb-top, .hamburger.is-open .hamb-bottom {
	top: 50%;
	margin-top: -2px;
}

.hamburger.is-open .hamb-top {
	-webkit-transform: rotate(45deg);
	-webkit-transition: -webkit-transform .2s cubic-bezier(.73, 1, .28, .08);
}

.hamburger.is-open .hamb-middle {
	display: none;
}

.hamburger.is-open .hamb-bottom {
	-webkit-transform: rotate(-45deg);
	-webkit-transition: -webkit-transform .2s cubic-bezier(.73, 1, .28, .08);
}

.hamburger.is-open:before {
	content: '';
	display: block;
	width: 100px;
	font-size: 14px;
	color: #fff;
	line-height: 32px;
	text-align: center;
	opacity: 0;
	-webkit-transform: translate3d(0, 0, 0);
	-webkit-transition: all .35s ease-in-out;
}

.hamburger.is-open:hover:before {
	opacity: 1;
	display: block;
	-webkit-transform: translate3d(-100px, 0, 0);
	-webkit-transition: all .35s ease-in-out;
}

.overlay {
	position: fixed;
	display: none;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(250, 250, 250, .8);
	z-index: 1;
}

.sidebar-menu {
	width: 100%;
	height: 80px;
	font-size: 20px;
}

.modal-content {
	width: 700px;
	height: 550px;
	margin-top: 15%;
}

.modal-body {
	height: 77%;
}
</style>


<script>
	$(document)
			.ready(
					function() {
						var trigger = $('.hamburger'), overlay = $('.overlay'), isClosed = false;

						trigger.click(function() {
							hamburger_cross();
						});

						function hamburger_cross() {

							if (isClosed == true) {
								overlay.hide();
								trigger.removeClass('is-open');
								trigger.addClass('is-closed');
								isClosed = false;
							} else {
								overlay.show();
								trigger.removeClass('is-closed');
								trigger.addClass('is-open');
								isClosed = true;
							}
						}

						$('[data-toggle="offcanvas"]').click(function() {
							$('#wrapper').toggleClass('toggled');

						});
						// sidemenu제외하고 overlay클릭시 사이드바 숨김
						$('.overlay').click(function() {
							if ($('.hamburger').hasClass('is-open')) {
								$('#wrapper').removeClass('toggled');
								$('.overlay').css('display', 'none');

								$('.hamburger').css('margin-left', '20px');
								overlay.hide();
								trigger.removeClass('is-open');
								trigger.addClass('is-closed');
								isClosed = false;
							}
						});

						// 메뉴바 상태에 따라 marin-left값 변화	
						$('.hamburger').click(function() {
							if ($('.hamburger').hasClass('is-closed')) {
								$('.hamburger').css('margin-left', '20px');
							} else if ($('.hamburger').hasClass('is-open')) {
								$('.hamburger').css('margin-left', '90px');
							}
						});

						// close버튼 클릭시 모달창 hide
						$('.closeBtn').click(function() {
							$('.modal').removeClass('show');
							$('.modal').addClass('fade');
							
							trigger.removeClass('is-open');
							trigger.addClass('is-closed');
							trigger.css('margin-left','20px');	
							$('#wrapper').removeClass('toggled');
							$('.overlay').css('display', 'none');
							overlay.hide();
							trigger.removeClass('is-open');
							trigger.addClass('is-closed');
							isClosed = false;
						});

					});
</script>
<div id="wrapper">
	<div class="overlay"></div>

	<!-- Sidebar -->
	<nav class="navbar navbar-inverse navbar-fixed-top"
		id="sidebar-wrapper" role="navigation">
		<ul class="nav sidebar-nav">
			<li class="sidebar-brand"><a
				href="${pageContext.request.contextPath }/index.htm">tOu private
					blog</a></li>
			<li class="sidebar-menu"><a
				href="${pageContext.request.contextPath }/index.htm">Home</a></li>
			<li class="sidebar-menu"><a
				href="${pageContext.request.contextPath }/profile/info.htm">Profile</a></li>
			<li class="sidebar-menu"><a
				href="${pageContext.request.contextPath }/project/info.htm">Project</a></li>
			<li class="sidebar-menu"><a
				href="${pageContext.request.contextPath }/board/info.htm">Board</a></li>
			<li class="sidebar-menu"><a href="javascript:infotab()">Info</a></li>
		</ul>
	</nav>
	<!-- /#sidebar-wrapper -->

	<!-- Page Content -->
	<div id="page-content-wrapper">
		<button type="button" class="hamburger is-closed"
			data-toggle="offcanvas">
			<span class="hamb-top"></span> <span class="hamb-middle"></span> <span
				class="hamb-bottom"></span>
		</button>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2"></div>
			</div>
		</div>
		<!-- /#page-content-wrapper -->

	</div>
	<!-- /#wrapper -->
	
	

	<!--  modal Info -->
	<style>
	.modal-header{	
	    background-color: #333333;
	    -webkit-text-fill-color: white;
	}
	</style>
	<div class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close closeBtn" data-dismiss="modal"
						aria-label="Close" style="color:#333333;">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Info</h4>
				</div>
				<div class="modal-body">
					<p>content&hellip;</p>
					<p>content&hellip;</p>
					<p>content&hellip;</p>
					<p>content&hellip;</p>
					<p>content&hellip;</p>
					<p>content&hellip;</p>
					<p>content&hellip;</p>
					<p>content&hellip;</p>
					<p>content&hellip;</p>
					<p>content&hellip;</p>
				</div>
				<div class="modal-footer" style="border-top: 1px solid #666666;">
					<button type="button" class="btn btn-default closeBtn"
						data-dismiss="modal" style="border-color: #666666;">Close</button>
				</div>
			</div>
		</div>
	</div>

	<script>
		// info탭 클릭시 모달창 show
		function infotab() {
			if ($('.modal').hasClass('fade')) {
				$('.modal').removeClass('fade');
				$('.modal').addClass('show');
			}
		}
	</script>