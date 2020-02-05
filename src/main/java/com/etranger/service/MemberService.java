package com.etranger.service;

import com.etranger.domain.MemberBean;

public interface MemberService {
	public void insertMember(MemberBean mb);
	public MemberBean userCheck(MemberBean mb);
}
