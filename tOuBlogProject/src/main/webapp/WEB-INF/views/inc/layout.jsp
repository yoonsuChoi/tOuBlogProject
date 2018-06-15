<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="utf-8" style="background-color: #EAEAEA;">
<head>
<meta charset="utf-8">
<title>tOu is :: ..</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/images/favicon.ico">
<link rel="stylesheet" href="${pageContext.request.contextPath }/layout.css" />

</head>


<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script>
	
	$(document).ready(function() {
		var currenturl = $(location).attr('href');
		
		if(currenturl=="http://localhost:8081/web/"){
			$('#home').addClass('active');
		}
	});
</script>
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
