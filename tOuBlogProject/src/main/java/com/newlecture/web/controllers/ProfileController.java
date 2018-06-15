package com.newlecture.web.controllers;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;
@Controller
@RequestMapping("/profile/*")
public class ProfileController {
	

	@RequestMapping(value= {"info.htm"}, method=RequestMethod.GET)
	public String Profile() {
		System.out.println("profile진입");
		return "profile.info.htm";
	}
	
	@RequestMapping(value= {"mail.htm"}, method=RequestMethod.GET)
	public String Mailsend(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String strMailFrom = request.getParameter("email");
		String strTitle = request.getParameter("title");
		String strContents = request.getParameter("message");
		String strName = request.getParameter("name");
		
		System.out.println("메일전송ajax진입");
		Boolean result = MailSender.sendMail(strTitle, strContents, strMailFrom, strName);
		
		String msg="";
		
		if(result) {
			msg = "success";
		}else {
			msg= "fail";
		}
		request.setAttribute("msg", msg);
		return "/WEB-INF/views/profile/mailSetting.jsp";
	}
	
	@RequestMapping(value= {"SMS.htm"}, method=RequestMethod.GET)
	public String SMSSend(HttpServletRequest request, HttpServletResponse response) {
		
		return "/WEB-INF/views/profile/SmsSetting.jsp";
		
	}
}