package com.etranger.review.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.etranger.review.dao.ReviewDAO;
import com.etranger.review.domain.ReviewBean;

@Service
public class ReviewServiceImpl implements ReviewService{

	@Inject
	ReviewDAO reviewDAO;

	@Override
	public List<ReviewBean> getReviewList() {
		
		return reviewDAO.getReviewList();
	}
	
	


}
