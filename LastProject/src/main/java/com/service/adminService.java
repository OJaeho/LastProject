package com.service;

import java.util.List;

import com.vo.UsersVO;

public interface adminService {

	List<UsersVO> selectmember();

	List<UsersVO> searchmember(String keyword);

	List<UsersVO> marketsearch(String keyword);
	
	List<UsersVO> sellersearch(String keyword);
	
	List<UsersVO> usersearch(String keyword);

	List<Object> getauth(String userName);
	
}
