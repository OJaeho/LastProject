package com.service;

import com.vo.UsersVO;

public interface MemberSerivce {

	public void insertMember(UsersVO vo);
	public UsersVO idCheck_Login(UsersVO vo);
	public UsersVO telCheck_Login(UsersVO vo);

}
