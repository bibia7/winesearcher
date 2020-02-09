package com.etranger.review.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.etranger.review.domain.ReviewBean;
import com.etranger.review.service.ReviewService;

@Controller
public class ReviewController {
	
	@Inject
	ReviewService reviewService;
	
	
	@RequestMapping(value = "/review/list", method = RequestMethod.GET)
	public String Review(Locale locale, Model model) {
		
//		List<ReviewBean> ReviewList = reviewService.getReviewList();
		
//		model.addAttribute("ReviewList", ReviewList );
		
		return "review/list";
	}
	
}
