package com.etranger.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.etranger.domain.MemberBean;

@Repository
public class MemberDAOImpl implements MemberDAO{
	@Inject
	SqlSession sqlSession;
	
	private static final String namespace="com.etranger.mapper.MemberMapper";

	@Override
	public void insertMember(com.etranger.domain.MemberBean mb) {
		System.out.println("MemberDAOImpl insertMember()");
		sqlSession.insert(namespace+".insertMember", mb);
		System.out.println(mb);
		
	}

	@Override
	public List<MemberBean> getMemberList() {
		// TODO Auto-generated method stub
		return null;
	}
	
	

	
	
	
	
	
	
	

}
