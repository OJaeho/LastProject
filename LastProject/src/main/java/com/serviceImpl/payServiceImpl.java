package com.serviceImpl;

import java.util.List;

import javax.management.RuntimeErrorException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import com.dao.payDao;
import com.service.payService;
import com.vo.PayVO;
@Service("payservice")
@EnableTransactionManagement
public class payServiceImpl implements payService {
	//장바구니페이지 > 결제 버튼 > 화면전환
	
	@Autowired
	private payDao paydao;
	
	//장바구니페이지 >> 결제 페이지 화면전환(장바구니 DB 불러옴)
	@Override
	public List<PayVO> paySelect(List<Integer> bId) {
		return paydao.paySelect(bId);		
	}

	
	@Transactional
	public int insertPay(PayVO vo,String userId,int groupId){
		try {
			//1. user mpoint 차감
			paydao.pointDeduction(vo,userId);
			//2. 상품테이블 재고변경
			paydao.updateProductCount(vo);
			//3. pay테이블에 판매내역 insert
			paydao.insertPay(vo, userId,groupId);
			//4. 장바구니 데이터 삭제
			paydao.deleteCartList(vo);
			//5. store point update
			int result = paydao.pointIncrease(vo);
			System.out.println(result + "서비스임플");
	 		return result;
		}catch (Error e) {
			throw new RuntimeErrorException(e);
		}
			
	}


	@Override
	public int getGroupId() {
		return paydao.getGroupId();
	}
	
	
} 
 