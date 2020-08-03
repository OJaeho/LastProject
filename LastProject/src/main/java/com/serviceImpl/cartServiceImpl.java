package com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.cartDao;
import com.service.cartService;
import com.vo.BuyVO;

@Service("cartservice")
public class cartServiceImpl implements cartService {

	@Autowired
	private cartDao cartdao;
	
	//카트 목록에 있는 상품인지 확인 (중복처리 위해서)
	public int selectCart(BuyVO vo) {
		return cartdao.selectCart(vo);
	}
	
	@Override
	public int cartInsert(BuyVO vo) {
		return cartdao.cartInsert(vo);
	}
	//디테일 화면 장바구니 리스트 띄우기
	@Override
	public List<BuyVO> cartSelect(BuyVO vo) {
		return cartdao.cartSelect(vo);
	}
	//장바구니 수량 업데이트
	@Override
	public int cartUpdate(BuyVO vo) {
		//System.out.println("serviceImpl 도착");
		return cartdao.cartUpdate(vo);
	}
	//장바구니 목록 띄우기
	@Override
	public List<BuyVO> shoppingcart(BuyVO vo) {
		return cartdao.shoppingcart(vo);
		
	}
	
	//장바구니 리스트 삭제
	@Override
	public int deleteShoppingCart(int bId) {
		return cartdao.deleteShoppingCart(bId);
	}
	
	//상품 디테일 창에서 장바구니 삭제
	@Override
	public int deleteDetailCart(int bId) {
		return cartdao.deleteDetailCart(bId);
		
	}
	
	

}
