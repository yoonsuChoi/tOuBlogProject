<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>tOu의 개인블로그</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath }/images/favicon.ico">
</head>
<style>
#main{
	background: white;	
	border-top: solid 1px;
	border-bottom: solid 1px;
	margin-left: 10%;
	margin-right:10%;
}
</style>
<body>
	<!--  sideMenu -->
	<tiles:insertAttribute name="sideMenu" />
	<!--  header -->
	<tiles:insertAttribute name="header" />
	
	<tiles:insertAttribute name="content"/>
	
	<!-- footer -->
	<tiles:insertAttribute name="footer" />
</body>
</html>
