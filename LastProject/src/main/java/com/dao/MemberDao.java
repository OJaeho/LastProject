package com.dao;

import com.vo.UsersVO;

public interface MemberDao {

	public void insertMember(UsersVO vo);
	public UsersVO idCheck_Login(UsersVO vo);
	public UsersVO telCheck_Login(UsersVO vo);

	
}
