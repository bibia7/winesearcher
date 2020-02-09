package com.etranger.service;

import java.util.List;

import com.etranger.domain.MemberBean;

public interface MemberService {
	public void insertMember(MemberBean mb);
	public List<MemberBean> getMemberList();
	
}
