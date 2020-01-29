package com.etranger.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.etranger.dao.MemberDAO;
import com.etranger.domain.MemberBean;

@Service
public class MemberServiseImpl implements MemberService {
	@Inject
	MemberDAO memberDAO;

	@Override
	public int memberInsert(MemberBean memberBean) {
		
		return memberDAO.memberInsert(memberBean);
	}

}
