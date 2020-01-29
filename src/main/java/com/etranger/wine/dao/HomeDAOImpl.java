package com.etranger.wine.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.etranger.wine.domain.HomeBean;

@Repository
public class HomeDAOImpl implements HomeDAO {

	@Inject
	SqlSession sqlSession;
	
	private static final String namespace="com.etranger.mapper.HomeMapper";
	
	@Override
	public List<HomeBean> getWineList() {
		return sqlSession.selectList(namespace+".getItemList");
	}
}
