package com.newlecture.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/project/*")
public class ProjectController {
	

	@RequestMapping(value= {"info.htm"}, method=RequestMethod.GET)
	public String Profile() {
		System.out.println("project진입");
		return "project.info";
	}
}