<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="utf-8" style="background-color: #EAEAEA;">
<head>
<meta charset="utf-8">
<title>tOu is : ..</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/images/favicon.ico">
</head>
<style>
#main {
	background: white;
	margin-left: 10%;
	margin-right: 10%;
}
</style>
<style>
ol, ul {
	list-style: none;
	padding: 0;
}

ul {
	list-style-type: disc;
	margin: 0 0 2em;
	padding-left: 1.12em;
}

.bio-recently {
	list-style-type: none;
	padding-left: 0px;
	border-bottom: 0.063rem solid rgba(0, 0, 0, 0.2);
	margin-bottom: 4%;
}

div {
	padding: 0;
}

.centered {
	max-width: 31em;
	margin: 0 auto;
	clear: both;
	width: 90%;
}
/* @media all and (min-width:600px) */
.centered {
	width: 84%;
}

.container::after, .centered::after {
	content: "";
	display: table;
	clear: both;
}

article, aside, canvas, details, figcaption, figure, footer, header,
	hgroup, main, menu, nav, section, summary {
	display: block;
}

.bio-recently a:hover img {
	opacity: 0.7;
}

.home .content {
	margin: 3em auto;
}
/* @media all and (min-width:600px) */
.home .content {
	font-size: 1.12em;
}
/* @media all and (min-width:800px) */
.home .content {
	margin: 8% auto;
	font-size: 1.18em;
}
/* @media all and (min-width:1030px) */
.home .content {
	margin: 10vh auto 10vh;
	font-size: 1.25em;
}
/* @media all and (min-width:1250px) */
.home .content {
	margin: 10vh auto 12vh;
	font-size: 1.31em;
}

html, body {
	background: #ffffff;
	margin: 0;
	padding: 0;
}

body {
	color: #3a3a3a;
	background: #EAEAEA;
	margin: 0;
	font-family: "colfax-web", sans-serif;
	font-weight: 400;
	line-height: 1.65;
	font-size: 106.3%;
	margin-left:18% !important;
	margin-right:18% !important;
}
/* @media all and (min-width:600px) */
body {
	font-size: 118.8%;
}
/* @media all and (min-width:800px) */
body {
	font-size: 131.3%;
}
/* @media all and (min-width:1030px) */
body {
	font-size: 137.5%;
}
/* @media all and (min-width:1250px) */
body {
	font-size: 143.8%;
}
/* @media all and (min-width:1400px) */
body {
	font-size: 1.56em;
}

html {
	overflow-y: auto;
}

.bio-recently li {
	border-top: 0.063rem solid rgba(0, 0, 0, 0.2);
	padding: 4% 0;
}
/* @media all and (min-width:600px) */
.bio-recently li {
	display: -webkit-flex;
	display: flex;
}
/* @media all and (min-width:600px) */
.bio-recently li span {
	width: 40%;
}

p {
	margin: 0 0 2em 0;
}
/* @media all and (min-width:600px) */
.bio-recently li p {
	margin: auto;
	padding-left: 5%;
}
/* @media all and (min-width:600px) */
.bio-recently li p {
	width: 70%;
}
/* @media all and (min-width:600px) */
.home .content p {
	font-size: 16px;
}
/* @media all and (min-width:800px) */
.home .content p {
	font-size: 18px;
}
/* @media all and (min-width:1030px) */
.home .content p {
	font-size: 21px;
}
/* @media all and (min-width:1250px) */
.home .content p {
	font-size: 23px;
}

a {
	text-decoration: none;
	color: #ee4938;
	transition: color 0.2s ease-out;
}

img, video {
	max-width: 100%;
	height: auto;
}

img {
	width: auto;
	max-width: 100%;
	height: auto;
	margin: 0 auto 2em;
	display: block;
}

a img {
	border: none;
}

.bio-recently a img {
	transition: opacity 0.2s ease-out;
	-webkit-backface-visibility: hidden;
}

.bio-recently li img {
	margin-bottom: 1em;
}
/* @media all and (min-width:600px) */
.bio-recently li img {
	margin-bottom: 0px;
}
</style>
<body>
	<div id="BigBody">
		<div id="middleBody" >
			<!--  Menu -->
			<tiles:insertAttribute name="Menu" />
			<!-- main_Profile -->
			<tiles:insertAttribute name="MainProfile" />

			<!-- main_Project -->
			<tiles:insertAttribute name="MainProject" />

			<%-- <tiles:insertAttribute name="content" /> --%>

			<!-- footer -->
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>
