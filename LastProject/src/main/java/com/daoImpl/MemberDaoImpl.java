package com.daoImpl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.MemberDao;
import com.vo.UsersVO;

@Repository("memberRepository")
public class MemberDaoImpl implements MemberDao {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertMember(UsersVO vo) {
		mybatis.insert("MemberMapper.insertMember",vo);
		mybatis.insert("MemberMapper.insertUserAuthority",vo);
	}

}
