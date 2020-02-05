package com.etranger.service;

import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.etranger.dao.MemberDAO;
import com.etranger.domain.MemberBean;

@Service
public class MemberServiceImpl implements MemberService{
	@Inject
	MemberDAO memberDAO;

	@Override
	public void insertMember(MemberBean mb) {
		System.out.println("MemberServiceImpl insertMember()");
		memberDAO.insertMember(mb);
	}

	@Override
	public MemberBean userCheck(MemberBean mb) {
		System.out.println("MemberServiceImpl userCheck()");
		return memberDAO.userCheck(mb);
	}

}
