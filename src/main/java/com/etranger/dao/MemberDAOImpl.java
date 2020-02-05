package com.etranger.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.etranger.domain.MemberBean;

@Repository
public class MemberDAOImpl implements MemberDAO{
	@Inject
	SqlSession sqlSession;
	private static final String namespace= "com.etranger.mapper.MemberMapper";
	@Override
	public void insertMember(MemberBean mb) {
		System.out.println("MemberDAOImpl insertMember()");
		//  memberMapper에서 sql 구문 가져와서 실행
		sqlSession.insert(namespace+".insertMember",mb);
	}

	@Override
	public MemberBean userCheck(MemberBean mb) {
		System.out.println("MemberDAOImpl userCheck()");
		return sqlSession.selectOne(namespace+".userCheck",mb);
	}

}
