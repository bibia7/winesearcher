package com.etranger.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.etranger.domain.MemberBean;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	SqlSession sqlSession;

	private static final String namespace = "com.itwillbs.mapper.MemberMapper";
	
	@Override
	public int memberInsert(MemberBean memberBean) {
		return sqlSession.insert(namespace.concat(".memberInsert"), memberBean);
	}

}
