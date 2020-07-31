package com.dao;

import java.util.List;

import com.vo.BuyVO;

public interface cartDao {
	//장바구니 목록에 있는 상품인지 확인 (중복처리 위해서)
	public int selectCart(BuyVO vo);
	//장바구니 목록에 추가
	public int cartInsert(BuyVO vo);
	//장바구니 목록 보여주기(해당 상품만)
	public List<BuyVO> cartSelect(BuyVO vo);
	//장바구니 목록에 있다면 업데이트
	public int cartUpdate(BuyVO vo);
	
	//장바구니페이지 화면전환
	public List<BuyVO> shoppingcart(BuyVO vo);
	
	//장바구니 목록 삭제
	public void deleteShoppingCart(int bId1);
	
	//상품 디테일 창에서 장바구니 삭제
	public int deleteDetailCart(int bId);
}
