package com.newlecture.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/*")
public class HomeController {
	
	@RequestMapping(value= {"index.htm"}, method=RequestMethod.GET)
	public String join() {
		return "home.index";
	}
	

}