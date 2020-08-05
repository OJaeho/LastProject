package com.service;

import java.util.List;

import com.vo.PayVO;

public interface payService {
	
	//장바구니 화면 결제창 눌렀을때
	public List<PayVO> paySelect(List<Integer> bId);
	
	//결제하기 버튼
	public int insertPay(PayVO vo,String userId) throws Exception;
}
 