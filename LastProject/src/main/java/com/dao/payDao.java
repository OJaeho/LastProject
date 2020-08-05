package com.dao;

import java.util.List;

import com.vo.PayVO;

public interface payDao {
	//------------------------------------------------------
	//장바구니 화면에서 결제버튼 눌렀을때
	public List<PayVO> paySelect(List<Integer> bId);
	
	
	//user테이블 mpoint 차감
	public void pointDeduction(PayVO vo,String userId);
	
	//상품테이블에 재고 수정
	public void updateProductCount(PayVO vo);
	
	//결제하기 버튼 눌렀을때 pay table에 insert
	public void insertPay(PayVO vo,String userId,int groupId);
	
	//buy테이블 데이터 삭제(장바구니)
	public void deleteCartList(PayVO vo);
	
	//user 테이블 spoint 증가
	public int pointIncrease(PayVO vo);
	
	//groupId 가져오기
	public int getGroupId();


	
	
	
}
 