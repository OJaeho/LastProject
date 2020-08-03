package com.daoImpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.payDao;
import com.vo.BuyVO;
import com.vo.PayVO;
@Repository("paydao")
public class payDaoImpl implements payDao {
	
	@Autowired 
	private SqlSessionTemplate mybatis;

	public List<PayVO> paySelect(List<Integer> bId) {
		List<PayVO> list = new ArrayList<PayVO>();
		System.out.println("다오도착");
		for(int i =0; i<bId.size(); i++) {
			HashMap map = new HashMap();
			map.put("list", bId.get(i));
			list.add(mybatis.selectOne("payMapper.paySelect",map));
		}
		return list;
	}
}
 