package com.etranger.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.etranger.domain.MemberBean;
import com.etranger.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class SearchController {

	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search() {
		return "search4";
	}
	
	@RequestMapping(value = "/search2", method = RequestMethod.GET)
	public String search2() {
		return "search3";
	}
	
//	@RequestMapping(value = "/insert", method = RequestMethod.POST)
//	public String insert(MemberBean memberBean) {
//		int result = memberService.memberInsert(memberBean);
//		
//		return "redirect:/";
//	}
	
}
