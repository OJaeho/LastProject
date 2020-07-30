package com.service;

import java.util.List;

import com.vo.BuyVO;

public interface cartService {
	//카트 목록에 있는 상품인지 확인 (중복처리 위해서)
	public int selectCart(BuyVO vo);
	//카트 목록에 없다면 insert처리
	public int cartInsert(BuyVO vo);
	//카트 목록 보여 주기
 	public List<BuyVO> cartSelect(BuyVO vo);
 	//카트목록에 있다면 업데이트
 	public int cartUpdate(BuyVO vo);
 	
 	//장바구니 페이지 전환
 	public List<BuyVO> shoppingcart(BuyVO vo);
 	
 	//장바구니 목록 삭제
 	public void deleteShoppingCart(int bId1);
}
