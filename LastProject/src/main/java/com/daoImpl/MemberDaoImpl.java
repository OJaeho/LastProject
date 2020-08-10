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
	@Override
	public void insertSeller(UsersVO vo) {
		mybatis.insert("MemberMapper.insertMember",vo);
		mybatis.insert("MemberMapper.insertSeller",vo);
		mybatis.insert("MemberMapper.insertUserAuthority",vo);
		
	}

	@Override
	public UsersVO idCheck_Login(UsersVO vo) {
		
		return mybatis.selectOne("MemberMapper.selectIdLogin",vo);
	}

	@Override
	public UsersVO telCheck_Login(UsersVO vo) {
		
		return mybatis.selectOne("MemberMapper.selectTelLogin",vo);
	}

}
