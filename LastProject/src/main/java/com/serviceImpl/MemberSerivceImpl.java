package com.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.MemberDao;
import com.service.MemberSerivce;
import com.vo.UsersVO;

@Service("memberService")
public class MemberSerivceImpl implements MemberSerivce {

	@Autowired
	private MemberDao dao;
	
	//입력받은 회원정보를 insert
	@Override
	public void insertMember(UsersVO vo) {
		dao.insertMember(vo);
		
	}

}
