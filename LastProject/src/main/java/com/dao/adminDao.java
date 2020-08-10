package com.dao;

import java.util.HashMap;
import java.util.List;

import com.vo.UpdateMarketVO;
import com.vo.UpdateStoreVO;
import com.vo.UsersVO;

public interface adminDao {
	public List<UsersVO> selectmember();

	public List<UsersVO> searchmember(String keyword);

	public List<UsersVO> marketsearch(String keyword);
	
	public List<UsersVO> sellersearch(String keyword);
	
	public List<UsersVO> usersearch(String keyword);

	public List<Object> getauth(String userName);

	public List<UsersVO> userinfoget(String userName);

	public void updateuser(UsersVO uvo);

	public void deleteuser(UsersVO uvo);
	
	

	public List<HashMap<String, Object>> marketinfoget(String userName);

	public void updatemarket(UpdateMarketVO upvo);

	public void deletemarket(UsersVO uvo);
	
	

	public List<HashMap<String, Object>> sellerinfoget(String userName);
	
	public void updateseller(UpdateStoreVO usvo);

	public void deleteseller(UsersVO uvo);
}
