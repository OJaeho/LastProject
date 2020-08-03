package com.dao;

import java.util.List;

import com.vo.PayVO;

public interface payDao {
	//장바구니 화면에서 결제버튼 눌렀을때
	public List<PayVO> paySelect(List<Integer> bId);
}
 