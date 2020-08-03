package com.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.cartDao;
import com.dao.mypageDao;
import com.vo.BuyVO;

@Repository("cartdao")
public class mypageDaoImpl implements mypageDao {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<HashMap> getPayList(int firstRow, int endRow, String id) {
		return null;
	}

	@Override
	public int getTotalCount(HashMap map) {
		return 0;
	}
	
}
