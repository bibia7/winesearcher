package com.etranger.review.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.etranger.review.domain.ReviewBean;

@Repository
public class ReviewDAOImpl implements ReviewDAO {

	@Inject
	SqlSession sqlSession;
	
	private static final String namespace="com.etranger.mapper.ReviewMapper";
	
	@Override
	public List<ReviewBean> getReviewList() {
		return sqlSession.selectList(namespace+".getReviewList");
	}

}
