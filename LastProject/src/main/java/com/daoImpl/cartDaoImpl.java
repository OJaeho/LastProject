package com.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.cartDao;
import com.vo.BuyVO;

@Repository("cartdao")
public class cartDaoImpl implements cartDao {

	@Autowired
	private SqlSessionTemplate mybatis;
	//장바구니 리스트 추가
	@Override
	public int cartInsert(BuyVO vo) {
		return mybatis.insert("buyMapper.insertBuy", vo);
	}

	//상품 디테일 화면 장바구니 목록에 있는 상품인지 확인 (중복처리 위해서)
	@Override
	public int selectCart(BuyVO vo) {
		return mybatis.selectOne("buyMapper.selectCart", vo);
	}
	//상품 디테일 화면 장바구니 목록 띄우기
	@Override
	public List<BuyVO> cartSelect(BuyVO vo) {
		return mybatis.selectList("buyMapper.cartSelect", vo);
	}
	//상품 디테일 화면 장바구니 상품 수량 업데이트
	@Override
	public int cartUpdate(BuyVO vo) {
		return mybatis.update("buyMapper.cartUpdate", vo); 
	}
	//장바구니 페이지 
	@Override
	public List<BuyVO> shoppingcart(BuyVO vo) {
		return mybatis.selectList("buyMapper.shoppingCart", vo);		
	}
	//장바구니 리스트 삭제
	@Override
	public void deleteShoppingCart(int bId1) {
		mybatis.delete("buyMapper.deleteShoppingCart", bId1);
	}
	//상품 디테일 창에서 장바구니 삭제
	@Override
	public int deleteDetailCart(int bId) {
		return mybatis.delete("buyMapper.deleteDetailCart",bId);
		
	}
}
