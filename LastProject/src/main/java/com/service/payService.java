package com.service;

import java.util.List;

import com.vo.PayVO;

public interface payService {
	
	//장바구니 화면 결제창 눌렀을때
	public List<PayVO> paySelect(List<Integer> bId);
}
 