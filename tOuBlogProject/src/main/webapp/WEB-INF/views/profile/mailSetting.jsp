<%@page import="net.sf.json.JSONObject"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String msg = (String) request.getAttribute("msg");

	JSONObject data = new JSONObject();
	data.put("msg", msg);
	System.out.println(data);
%>
<%=data%>