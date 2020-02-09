package com.etranger.wine.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.etranger.wine.domain.HomeBean;
import com.etranger.wine.service.HomeService;

@Controller
public class HomeController {
	
	@Inject
	HomeService homeService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		List<HomeBean> wineList = homeService.getWineList(2);
		
		model.addAttribute("wineList", wineList );
		
		return "home";
	}
	
}