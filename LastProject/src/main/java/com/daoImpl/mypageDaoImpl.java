package com.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.cartDao;
import com.dao.mypageDao;
import com.vo.BuyVO;
import com.vo.ReviewVO;

@Repository("mypagedao")
public class mypageDaoImpl implements mypageDao {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<HashMap<String, Object>> getPayList(int firstRow, int endRow, String id) {
		HashMap m = new HashMap();
		m.put("first", firstRow);
		m.put("end", endRow);
		m.put("id", id);
		return mybatis.selectList("mypageMapper.selectPayList",m);
	}

	@Override
	public int getTotalCount(HashMap map) {
		return mybatis.selectOne("mypageMapper.getTotal",map);
	}

	@Override
	public List<HashMap<String, Object>> getReviewList(int firstRow, int endRow, String id) {
		HashMap m = new HashMap();
		m.put("first", firstRow);
		m.put("end", endRow);
		m.put("id", id);
		return mybatis.selectList("mypageMapper.selectReviewList",m);
	}

	@Override
	public int deleteReview(ReviewVO rvo) {
		return mybatis.update("mypageMapper.deleteReview",rvo);
	}
	
}
