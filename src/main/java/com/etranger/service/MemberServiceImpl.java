package com.etranger.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.etranger.dao.MemberDAO;
import com.etranger.domain.MemberBean;


@Service   // 어노테이션으로 이 클래스의 역할 선언
public class MemberServiceImpl implements MemberService{

	@Inject 	//의존관계 주입(DI)
	MemberDAO memberDAO;
	
	@Override
	public void insertMember(MemberBean mb) {
		System.out.println("MemberServiceImpl insertMember()");
		memberDAO.insertMember(mb);
	}

	@Override
	public List<MemberBean> getMemberList() {
		System.out.println("getMemberList");
		
		return memberDAO.getMemberList();
	}
	
	
	
	

	

}
