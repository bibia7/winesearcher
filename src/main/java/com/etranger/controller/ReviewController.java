package com.etranger.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ReviewController {
	
	@RequestMapping(value = "/review/list", method = RequestMethod.GET)
	public String insert() {
		return "/review/list";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
