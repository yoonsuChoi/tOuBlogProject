<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags"%>
<style>
#mainImage{
	margin-top: 0px;
}
#header{
	margin-left:10%;
	margin-right:10%;
}
</style>


<div id="header">
		<%-- <h1 id="logo" style="width: 100%; height:100%;">
			<a href="${pageContext.request.contextPath }/index.htm"><img src="${pageContext.request.contextPath }/images/headerImage.jpg" alt="뉴렉처" /></a>
		</h1> --%>	
		<div>
			<h1 id="mainImage" style="width:100%; height:100%;">
			<br><br><br>					header
				<a href="${pageContext.request.contextPath }/index.htm"></a>
			</h1>
		</div>
</div>