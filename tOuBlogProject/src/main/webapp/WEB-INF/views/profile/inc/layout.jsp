<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="utf-8"
	style="background-color: #EAEAEA;">
<head>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="utf-8">
	<title>tOu is : ..</title>
	<link rel="shortcut icon"
		href="${pageContext.request.contextPath }/images/favicon.ico" />
	<link rel="stylesheet"
		href="${pageContext.request.contextPath }/layout.css" />
</head>
<script>
	$(document).ready(function() {
		var currenturl = $(location).attr('href');

		if (currenturl == "http://localhost:8081/web/profile/info.htm") {
			$('#profile').addClass('active');
			$('#home').prop('href', 'http://localhost:8081/web/');
			$('.btn-outline-dark').first().css('display', 'none');
		}
		
		$('#sendSMS').click(function (){
			wrapWindowByMask();
			$('#lodingCircle').css('display','block');
			centerLoding();
			var params = $('#SMSForm').serialize();
			$.ajax({
				url : "http://localhost:8081/web/profile/SMS.htm",
				dataType : 'json',
				type : 'GET',
				data : params,
				success : function(data) {
					if (data.SorF == "success") {
						$('#lodingCircle').css('display','none');
						SMSSuccess();
						$('#modalLayers').fadeIn(1000);
						setTimeout(function() {
							$('#mask').hide();
							$('#modalLayers').fadeOut(1000);
						}, 1000);
						$('#pnumber').prop('value','');
						$('#pmessage').prop('value','');
					}else{
						alert("발송 실패");
					}
				
				}
			});
		});

		$('#sendMail').click(function() {

			wrapWindowByMask();
			$('#lodingCircle').css('display','block');
			centerLoding();
			var params = $('#mailForm').serialize();
			$.ajax({
				url : "http://localhost:8081/web/profile/mail.htm",
				dataType : 'json',
				type : 'GET',
				data : params,
				success : function(data) {
					//name email title  message
					$('#lodingCircle').css('display','none');
					centerSuccess();
					$('#modalLayer').fadeIn(1000);
					setTimeout(function() {
						$('#mask').hide();
						$('#modalLayer').fadeOut(1000);
					}, 1000);
					$('#name').prop('value','');
					$('#email').prop('value','');
					$('#title').prop('value','');
					$('#message').prop('value','');
				}
			});
		});
		function centerLoding()  {
			var loding = $('#lodingCircle');
			
			loding.css({
			'position': 'fixed',
			'left': '50%',
			'top': '50%'
			});
			loding.css({
			'margin-left': -loding.outerWidth() / 2 + 'px',
			'margin-top': -loding.outerHeight() / 2 + 'px'
			});

			return loding;
		}
		
		function centerSuccess()  {
			var success = $('.modalContent');
			
			success.css({
			'position': 'fixed',
			'left': '50%',
			'top': '50%'
			});
			success.css({
			'margin-left': -success.outerWidth() / 2 + 'px',
			'margin-top': -success.outerHeight() / 2 + 'px'
			});

			return success;
		}
		function SMSSuccess()  {
			var success = $('.modalContents');
			
			success.css({
			'position': 'fixed',
			'left': '50%',
			'top': '50%'
			});
			success.css({
			'margin-left': -success.outerWidth() / 2 + 'px',
			'margin-top': -success.outerHeight() / 2 + 'px'
			});

			return success;
		}
	
	});
</script>

<script>
	function wrapWindowByMask() {
		//화면의 높이와 너비를 구한다.
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();

		//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
		$('#mask').css({
			'width' : maskWidth,
			'height' : maskHeight
		});

		//애니메이션 효과
		$('#mask').fadeTo("slow", 0.3);
	}
</script>


<body>
	<div id="BigBody">
		<div id="middleBody">
			<!--  Menu -->
			<tiles:insertAttribute name="Menu" />
			<!-- main_Profile -->
			<tiles:insertAttribute name="MainProfile" />
			<!-- profile content -->
			<tiles:insertAttribute name="content" />
			<!-- footer -->
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
	
	
<div class="container" id="lodingCircle" style="display: none; z-index: 9999;">
	<div class="row">
		<div id="loader">
    		<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="lading"></div>
		</div>
	</div>
</div>
	<div id="modalLayer" style="display: none; position: relative; z-index: 9999;">
		<div class="modalContent" style="margin-left: 50px;">
			<div style="text-align: center; margin-top: 5%;">
				<img src="${pageContext.request.contextPath }/images/success.png" alt="" />
				<h2>전송 완료</h2>

				<p style="margin-top: 7%;">메일을 성공적으로 발송하였습니다.</p>
			</div>
		</div>
	</div>
	<div id="modalLayers" style="display: none; position: relative; z-index: 9999;">
		<div class="modalContents" style="margin-left: 50px;">
			<div style="text-align: center; margin-top: 5%;">
				<img src="${pageContext.request.contextPath }/images/success.png" alt="" />
				<h2>전송 완료</h2>

				<p style="margin-top: 7%;">문자를 성공적으로 발송하였습니다.</p>
			</div>
		</div>
	</div>
	<div id="mask"></div>
<style>
#mask {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 9000;
	background-color: #000;
	display: none;
}
#modalLayer .modalContent {
	width: 440px;
	height: 270px;
	padding: 20px;
	border: 1px solid #ccc;
	position: fixed;
	left: 50%;
	top: 49%;
	z-index: 9002;
	background: white;
	border-radius: 2%;
}
#modalLayers .modalContents {
	width: 440px;
	height: 270px;
	padding: 20px;
	border: 1px solid #ccc;
	position: fixed;
	left: 50%;
	top: 49%;
	z-index: 9002;
	background: white;
	border-radius: 2%;
}

#loader {
    bottom: 0;
    height: 175px;
    left: 0;
    margin: auto;
    position: absolute;
    right: 0;
    top: 0;
    width: 175px;
}
#loader {
    bottom: 0;
    height: 175px;
    left: 0;
    margin: auto;
    position: absolute;
    right: 0;
    top: 0;
    width: 175px;
}
#loader .dot {
    bottom: 0;
    height: 100%;
    left: 0;
    margin: auto;
    position: absolute;
    right: 0;
    top: 0;
    width: 87.5px;
}
#loader .dot::before {
    border-radius: 100%;
    content: "";
    height: 87.5px;
    left: 0;
    position: absolute;
    right: 0;
    top: 0;
    transform: scale(0);
    width: 87.5px;
}
#loader .dot:nth-child(7n+1) {
    transform: rotate(45deg);
}
#loader .dot:nth-child(7n+1)::before {
    animation: 0.8s linear 0.1s normal none infinite running load;
    background: #00ff80 none repeat scroll 0 0;
}
#loader .dot:nth-child(7n+2) {
    transform: rotate(90deg);
}
#loader .dot:nth-child(7n+2)::before {
    animation: 0.8s linear 0.2s normal none infinite running load;
    background: #00ffea none repeat scroll 0 0;
}
#loader .dot:nth-child(7n+3) {
    transform: rotate(135deg);
}
#loader .dot:nth-child(7n+3)::before {
    animation: 0.8s linear 0.3s normal none infinite running load;
    background: #00aaff none repeat scroll 0 0;
}
#loader .dot:nth-child(7n+4) {
    transform: rotate(180deg);
}
#loader .dot:nth-child(7n+4)::before {
    animation: 0.8s linear 0.4s normal none infinite running load;
    background: #0040ff none repeat scroll 0 0;
}
#loader .dot:nth-child(7n+5) {
    transform: rotate(225deg);
}
#loader .dot:nth-child(7n+5)::before {
    animation: 0.8s linear 0.5s normal none infinite running load;
    background: #2a00ff none repeat scroll 0 0;
}
#loader .dot:nth-child(7n+6) {
    transform: rotate(270deg);
}
#loader .dot:nth-child(7n+6)::before {
    animation: 0.8s linear 0.6s normal none infinite running load;
    background: #9500ff none repeat scroll 0 0;
}
#loader .dot:nth-child(7n+7) {
    transform: rotate(315deg);
}
#loader .dot:nth-child(7n+7)::before {
    animation: 0.8s linear 0.7s normal none infinite running load;
    background: magenta none repeat scroll 0 0;
}
#loader .dot:nth-child(7n+8) {
    transform: rotate(360deg);
}
#loader .dot:nth-child(7n+8)::before {
    animation: 0.8s linear 0.8s normal none infinite running load;
    background: #ff0095 none repeat scroll 0 0;
}
#loader .lading {
    background-image: url("../images/loading.gif");
    background-position: 50% 50%;
    background-repeat: no-repeat;
    bottom: -40px;
    height: 20px;
    left: 0;
    position: absolute;
    right: 0;
    width: 180px;
}
@keyframes load {
100% {
    opacity: 0;
    transform: scale(1);
}
}
@keyframes load {
100% {
    opacity: 0;
    transform: scale(1);
}
}
	
</style>
	

</body>
</html>
