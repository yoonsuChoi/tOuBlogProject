<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link
	href='//netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'
	rel='stylesheet' />
</head>

<style>
footer.nb-footer {
	background: white;
	border-top: 0.063rem solid rgba(0,0,0,0.2);
	margin-top:10%;
}

footer.nb-footer .about {
	margin: 0 auto;
	margin-top: 40px;
	max-width: 1170px;
	text-align: center;
}

footer.nb-footer .about p {
	font-size: 13px;
	color: #999;
	margin-top: 30px;
}

footer.nb-footer .about .social-media {
	margin-top: 15px;
}

footer.nb-footer .about .social-media ul li a {
	display: inline-block;
	width: 45px;
	height: 45px;
	line-height: 45px;
	border-radius: 50%;
	font-size: 16px;
	color: #b78c33;
	border: 1px solid rgba(255, 255, 255, 0.3);
}

footer.nb-footer .about .social-media ul li a:hover {
	background: #b78c33;
	color: #fff;
	border-color: #b78c33;
}

footer.nb-footer .footer-info-single {
	margin-top: 30px;
}

footer.nb-footer .footer-info-single .title {
	color: #aaa;
	text-transform: uppercase;
	font-size: 16px;
	border-left: 4px solid #b78c33;
	padding-left: 5px;
}

footer.nb-footer .footer-info-single ul li a {
	display: block;
	color: #aaa;
	padding: 2px 0;
}

footer.nb-footer .footer-info-single ul li a:hover {
	color: #b78c33;
}

footer.nb-footer .footer-info-single p {
	font-size: 13px;
	line-height: 20px;
	color: #aaa;
}

footer.nb-footer .copyright {
	margin-top: 15px;
	background: #111;
	padding: 7px 0;
	color: #999;
}

footer.nb-footer .copyright p {
	margin: 0;
	padding: 0;
}
</style>
<body>
	<footer class="nb-footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="about">
						<%-- <img src="${pageContext.request.contextPath }/images/headerImage.png" class="img-responsive center-block"
							alt=""> --%>
						<p>Bootstrap Footer example snippets with CSS, Javascript and
							HTML. Code example of bootstrap-3 footer using HTML, Javascript,
							jQuery, and CSS. 5 Beautiful and Responsive</p>

						<div class="social-media">
							<ul class="list-inline">
								<li><a href="https://github.com/yoonsuChoi/tOuBlogProject" target="_blank" title="github"><i
										class="fa"><img src="${pageContext.request.contextPath }/images/github.png" alt="github" style="width: 100%" title="github" /> </i></a></li>
								<li><a href="http://www.nextbootstrap.com/" title="mail" target="_blank"> <i
										class="fa "><img src="${pageContext.request.contextPath }/images/gmail.png" alt="gmail" style="width: 100%;" title="mail"/></i></a></li>
								<li><a href="http://www.nextbootstrap.com/" title="mail" target="_blank"> <i
										class="fa "><img src="${pageContext.request.contextPath }/images/gmail.png" alt="gmail" style="width: 100%;" title="mail"/></i></a></li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<section class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<p>Copyright © 2018. made by Choi Yoon-Su.</p>
					</div>
					<div class="col-sm-6"></div>
				</div>
			</div>
		</section>
	</footer>
</body>
</html>