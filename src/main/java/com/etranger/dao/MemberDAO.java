package com.etranger.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.etranger.domain.MemberBean;


@Repository
public interface MemberDAO {

	void insertMember(MemberBean mb);

	List<MemberBean> getMemberList();
	
	

	
}
