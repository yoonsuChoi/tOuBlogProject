package com.newlecture.web.dao;

import java.sql.SQLException;

import com.newlecture.web.vo.Member;

public interface MemberDao {
	public Member getMember(String id) throws ClassNotFoundException, SQLException;
	public int insert(Member member) throws ClassNotFoundException, SQLException;
}
	
