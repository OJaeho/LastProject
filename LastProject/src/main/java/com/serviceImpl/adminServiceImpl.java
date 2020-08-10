package com.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.adminDao;
import com.service.adminService;
import com.vo.UpdateMarketVO;
import com.vo.UpdateStoreVO;
import com.vo.UsersVO;


@Service("adminService")
public class adminServiceImpl implements adminService {

	@Autowired
	private adminDao adminDao;

	@Override
	public List<UsersVO> selectmember() {
		System.out.println("서비스 임플");
		return adminDao.selectmember();
	}

	@Override
	public List<UsersVO> searchmember(String keyword) {
		// TODO Auto-generated method stub
		return adminDao.searchmember(keyword);
	}

	@Override
	public List<UsersVO> marketsearch(String keyword) {
		// TODO Auto-generated method stub
		return adminDao.marketsearch(keyword);
	}
	
	@Override
	public List<UsersVO> sellersearch(String keyword) {
		// TODO Auto-generated method stub
		return adminDao.sellersearch(keyword);
	}
	
	@Override
	public List<UsersVO> usersearch(String keyword) {
		// TODO Auto-generated method stub
		return adminDao.usersearch(keyword);
	}

	@Override
	public List<Object> getauth(String userName) {
		// TODO Auto-generated method stub
		return adminDao.getauth(userName);
	}

	@Override
	public List<UsersVO> userinfoget(String userName) {
		// TODO Auto-generated method stub
		return adminDao.userinfoget(userName);
	}

	@Override
	public void updateuser(UsersVO uvo) {
		adminDao.updateuser(uvo); 
		
	}

	@Override
	public void deleteuser(UsersVO uvo) {
		adminDao.deleteuser(uvo);
		
	}

	@Override
	public List<HashMap<String, Object>> marketinfoget(String userName) {
		// TODO Auto-generated method stub
		return adminDao.marketinfoget(userName);
	}
	@Override
	public void updatemarket(UpdateMarketVO upvo) {
		adminDao.updatemarket(upvo); 
	}
	@Override
	public void deletemarket(UsersVO uvo) {
		adminDao.deletemarket(uvo); 
	}

	
	@Override
	public List<HashMap<String, Object>> sellerinfoget(String userName) {
		// TODO Auto-generated method stub
		return adminDao.sellerinfoget(userName);
	}
	@Override
	public void updateseller(UpdateStoreVO usvo) {
		adminDao.updateseller(usvo); 
	}
	@Override
	public void deleteseller(UsersVO uvo) {
		adminDao.deleteseller(uvo); 
	}

}
