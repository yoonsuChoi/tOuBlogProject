<%@page import="org.json.simple.JSONObject"%>
<%@page import="net.nurigo.java_sdk.exceptions.CoolsmsException"%>
<%@page import="java.util.HashMap"%>
<%@page import="net.nurigo.java_sdk.api.Message"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String strNumber = request.getParameter("pnumber");
	String strMessage = request.getParameter("pmessage");
	String mobile = "010-8623-1904";
	String api_key = "NCSN4UEWYBPYEFVE";
	String api_secret = "XBGREEM5JZQMM5DEPVVZLQXTUVKNFKRW";
	Message coolsms = new Message(api_key, api_secret);
	
	System.out.println(strNumber);
	System.out.println(strMessage);
	String SorF = null;
	System.out.println("sms발송진입");
	SorF = "success";
	HashMap<String, String> params = new HashMap<String, String>();
	params.put("to", mobile);
	params.put("from", strNumber);
	params.put("type", "SMS");
	params.put("text", strMessage);
	params.put("app_version", "test app 1.2");

	try {
		JSONObject obj = (JSONObject)coolsms.send(params);
		System.out.println(obj.toString());
	} catch (CoolsmsException e) {
		System.out.println(e.getMessage());
		System.out.println(e.getCode());
		SorF = "false";
	}

	JSONObject data = new JSONObject();
	data.put("SorF", SorF);
%>
<%=data%>