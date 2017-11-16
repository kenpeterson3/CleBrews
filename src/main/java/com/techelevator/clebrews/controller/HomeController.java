package com.techelevator.clebrews.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@RequestMapping(path="/", method=RequestMethod.GET)
	public String showHomePage() {
		
		return "index";
	}
	@RequestMapping(path="/index", method=RequestMethod.GET)
	public String showIndex() {
		
		return "index";
	}
	
}
