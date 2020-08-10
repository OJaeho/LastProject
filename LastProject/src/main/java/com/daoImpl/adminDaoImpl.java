package com.daoImpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.adminDao;
import com.vo.UsersVO;

@Repository("adminDao")
public class adminDaoImpl implements adminDao {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<UsersVO> selectmember() {
		System.out.println("다오임플");
		return mybatis.selectList("admin.selectmember");
	}

	@Override
	public List<UsersVO> searchmember(String keyword) {
		return mybatis.selectList("admin.searchmember",keyword);
	}

	@Override
	public List<UsersVO> marketsearch(String keyword) {
		return mybatis.selectList("admin.marketsearch",keyword);
	}
	
	@Override
	public List<UsersVO> sellersearch(String keyword) {
		return mybatis.selectList("admin.sellersearch",keyword);
	}
	
	@Override
	public List<UsersVO> usersearch(String keyword) {
		return mybatis.selectList("admin.usersearch",keyword);
	}

	@Override
	public List<Object> getauth(String userName) {
		return mybatis.selectList("admin.getauth",userName);
	}

	
}
