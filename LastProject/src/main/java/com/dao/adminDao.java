package com.dao;

import java.util.List;

import com.vo.UsersVO;

public interface adminDao {
	public List<UsersVO> selectmember();

	public List<UsersVO> searchmember(String keyword);

	public List<UsersVO> marketsearch(String keyword);
	
	public List<UsersVO> sellersearch(String keyword);
	
	public List<UsersVO> usersearch(String keyword);

	public List<Object> getauth(String userName);
}
