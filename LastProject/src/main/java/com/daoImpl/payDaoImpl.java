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
import com.vo.BuyVO;
import com.vo.PayVO;
@Repository("paydao")
public class payDaoImpl implements payDao {
	
	
	@Autowired 
	private SqlSessionTemplate mybatis;
	////장바구니페이지 >> 결제 페이지 화면전환(장바구니 DB 불러옴)
	public List<PayVO> paySelect(List<Integer> bId) {
		List<PayVO> list = new ArrayList<PayVO>();
		for(int i =0; i<bId.size(); i++) {
			HashMap map = new HashMap();
			map.put("list", bId.get(i));
			list.add(mybatis.selectOne("payMapper.paySelect",map));
		}
		return list;
	}
	//결제하기 버튼 눌렀을때
	@Override
	public void updateProductCount(PayVO vo) {
		System.out.println("상품재고수량 끝");
		mybatis.update("payMapper.updateProductCount",vo);
	}

	@Override
	public void deleteCartList(PayVO vo) {
		System.out.println("장바구니 삭제 끝");
		mybatis.delete("payMapper.deleteCartList",vo);
		
	}

	@Override
	public void pointDeduction(PayVO vo,String userId) {
		HashMap map = new HashMap();
		map.put("vo", vo);
		map.put("user", userId);
		System.out.println("유저포인트차감 완료");
		mybatis.update("payMapper.pointDeduction",map);		
	}

	
	@Override
	public void insertPay(PayVO vo,String userId) {
		HashMap map = new HashMap();
		map.put("vo", vo);
		map.put("user", userId);
		System.out.println("판매 리스트 올라가기 끝");
		mybatis.insert("payMapper.insertPay",map);
	}
	
	@Override
	public int pointIncrease(PayVO vo) {
		System.out.println("상점포인트 오르는거 끝");
		return mybatis.update("payMapper.pointIncrease",vo);
		
	}
}
 