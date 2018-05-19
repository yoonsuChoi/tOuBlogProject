<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link type="text/css" href="${pageContext.request.contextPath }/sideMenu.css" rel="stylesheet" />

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