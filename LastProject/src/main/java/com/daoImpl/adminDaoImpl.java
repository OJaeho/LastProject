package com.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.adminDao;
import com.vo.UpdateMarketVO;
import com.vo.UpdateStoreVO;
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

	@Override
	public List<UsersVO> userinfoget(String userName) {
		return mybatis.selectList("admin.userinfoget",userName);
	}

	@Override
	public void updateuser(UsersVO uvo) {
		mybatis.update("admin.updateuser",uvo);
		
	}

	@Override
	public void deleteuser(UsersVO uvo) {
		mybatis.update("admin.deleteuser",uvo);
		
	}

	@Override
	public List<HashMap<String, Object>> marketinfoget(String userName) {
		return mybatis.selectList("admin.marketinfoget",userName);
	}
	@Override
	public void updatemarket(UpdateMarketVO upvo) {
		mybatis.update("admin.updatemarket",upvo);
		mybatis.update("admin.updatemkname",upvo);
	}
	@Override
	public void deletemarket(UsersVO uvo) {
		mybatis.update("admin.deletemarket",uvo);
		mybatis.update("admin.deletemkuser",uvo);
	}
	
	

	@Override
	public List<HashMap<String, Object>> sellerinfoget(String userName) {
		return mybatis.selectList("admin.sellerinfoget",userName);
	}
	@Override
	public void updateseller(UpdateStoreVO usvo) {
		mybatis.update("admin.updateseller",usvo);
		mybatis.update("admin.updatesname",usvo);
	}
	@Override
	public void deleteseller(UsersVO uvo) {
		mybatis.update("admin.deleteseller",uvo);
		mybatis.update("admin.deletestuser",uvo);
	}
	
}
