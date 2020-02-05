package com.etranger.dao;

import com.etranger.domain.MemberBean;

public interface MemberDAO {
	public void insertMember(MemberBean mb);
	public MemberBean userCheck(MemberBean mb);
}
