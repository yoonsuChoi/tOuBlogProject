package com.newlecture.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	

	@RequestMapping(value= {"info.htm"}, method=RequestMethod.GET)
	public String Profile() {
		System.out.println("board진입");
		return "board.info";
	}
}