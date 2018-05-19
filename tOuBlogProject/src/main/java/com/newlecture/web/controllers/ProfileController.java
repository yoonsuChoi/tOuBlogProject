package com.newlecture.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/profile/*")
public class ProfileController {
	

	@RequestMapping(value= {"info.htm"}, method=RequestMethod.GET)
	public String Profile() {
		System.out.println("profile진입");
		return "profile.info";
	}
}