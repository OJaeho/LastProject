package com.daoImpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.commons.collections.map.HashedMap;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.PlatformTransactionManager;

import com.dao.payDao;
import com.dao.payviewDao;
import com.vo.BuyVO;
import com.vo.PayVO;
@Repository("payviewDao")
public class payviewDaoImpl implements payviewDao {
	
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<PayVO> getorderitem(PayVO pvo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("payviewMapper.getorderitem", pvo);
	}

	public List<PayVO> getorderuser(PayVO pvo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("payviewMapper.getorderuser", pvo);
	}

	public int getorderprice(PayVO pvo) {
		System.out.println(pvo.getGroupId()+"야아아호ㅗㅇ오");
		return mybatis.selectOne("payviewMapper.getorderprice", pvo);
	}
	
	
}
 