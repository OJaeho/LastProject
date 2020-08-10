package com.service;

import java.util.HashMap;
import java.util.List;

import com.vo.UpdateMarketVO;
import com.vo.UpdateStoreVO;
import com.vo.UsersVO;

public interface adminService {

	List<UsersVO> selectmember();

	List<UsersVO> searchmember(String keyword);

	List<UsersVO> marketsearch(String keyword);
	
	List<UsersVO> sellersearch(String keyword);
	
	List<UsersVO> usersearch(String keyword);

	List<Object> getauth(String userName);

	
	
	List<UsersVO> userinfoget(String userName);

	void updateuser(UsersVO uvo);

	void deleteuser(UsersVO uvo);

	
	
	List<HashMap<String, Object>> marketinfoget(String userName);

	void updatemarket(UpdateMarketVO upvo);

	void deletemarket(UsersVO uvo);

	
	
	List<HashMap<String, Object>> sellerinfoget(String userName);
	
	void updateseller(UpdateStoreVO usvo);

	void deleteseller(UsersVO uvo);
}
