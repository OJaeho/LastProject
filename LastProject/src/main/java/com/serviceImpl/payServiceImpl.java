package com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.payDao;
import com.service.payService;
import com.vo.PayVO;
@Service("payservice")
public class payServiceImpl implements payService {
	//장바구니페이지 > 결제 버튼 > 화면전환
	
	@Autowired
	private payDao paydao;
	
	//장바구니페이지 >> 결제 페이지 화면전환(장바구니 DB 불러옴)
	@Override
	public List<PayVO> paySelect(List<Integer> bId) {
		return paydao.paySelect(bId);		
	}
}
 