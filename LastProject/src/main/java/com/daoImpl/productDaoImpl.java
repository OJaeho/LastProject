package com.daoImpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.productDao;
import com.vo.CategoryVO;
import com.vo.MarketVO;
import com.vo.ProductVO;
import com.vo.ReviewVO;
import com.vo.StoreVO;

@Repository("productDao")
public class productDaoImpl implements productDao {

	@Autowired
	private SqlSessionTemplate mybatis;

	// 상품 정보 가져오기
	@Override
	public List<ProductVO> SelectProduct(ProductVO vo) {
		System.out.println("===> ProductMapper selectproduct 호출");
		return mybatis.selectList("product.selectProduct", vo);
	}

	// 상품 검색하기
	@Override
	public List<ProductVO> SearchProduct(ProductVO vo) {
		System.out.println("===> ProductMapper Searchproduct 호출");
		return mybatis.selectList("product.searchProduct", vo);
	}

	// 높은 가격순 상품 가져오기
	@Override
	public List<ProductVO> HighItem(ProductVO vo) {
		System.out.println("===> ProductMapper HighItem 호출");
		return mybatis.selectList("product.highItem", vo);
	}

	// 낮은 가격순 상품 가져오기
	@Override
	public List<ProductVO> LowItem(ProductVO vo) {
		System.out.println("===> ProductMapper LowItem 호출");
		return mybatis.selectList("product.lowItem", vo);
	}

	// 카테고리 정보 가져오기
	@Override
	public List<CategoryVO> StoreCategory() {
		System.out.println("===> ProductMapper CategoryStore 호출");
		return mybatis.selectList("product.storeCategory");
	}

	// 상품 카테고리별로 분류
	@Override
	public List<ProductVO> SearchCategory(CategoryVO cvo) {
		System.out.println("===> ProductMapper SearchCategory 호출");
		return mybatis.selectList("product.searchCategory", cvo);
	}

	// 점포 카테고리별로 분류
	@Override
	public List<StoreVO> SearchCategory_store(CategoryVO cvo) {
		System.out.println("===> ProductMapper SearchCategory 호출");
		return mybatis.selectList("product.searchCategory_store", cvo);
	}

	// 선택한 상품 정보 가져오기
	@Override
	public List<ProductVO> ProductInfo(ProductVO vo) {
		System.out.println("===> ProductMapper ProductInfo 호출");
		return mybatis.selectList("product.productInfo", vo);
	}

	// 선택한 상품 옵션 가져오기
	@Override
	public List<ProductVO> ProductOption(ProductVO vo) {
		System.out.println("===> ProductMapper productOption 호출");
		return mybatis.selectList("product.productOption", vo);
	}

	// 선택한 점포 정보 가져오기
	@Override
	public List<StoreVO> StoreInfo(StoreVO vo) {
		System.out.println("===> ProductMapper storeInfo 호출");
		return mybatis.selectList("product.storeInfo", vo);
	}

	// 리뷰 정보 넣기
	public void InsertReview(ReviewVO rvo) {
		System.out.println("===> ProductMapper InsertReview 호출");
		mybatis.insert("product.insertReview", rvo);
	}

	// 리뷰 가져오기
	@Override
	public List<ReviewVO> SelectReview(ReviewVO rvo) {
		System.out.println("===> ProductMapper SelectReview 호출");
		return mybatis.selectList("product.selectReview", rvo);
	}

	// 상점 등록하기
	@Override
	public void InsertStore(StoreVO svo) {
		System.out.println("===> ProductMapper InsertStore 호출");
		mybatis.insert("product.insertStore", svo);
	}

	// 상품 등록하기
	@Override
	public void InsertProduct(ProductVO pvo) {
		System.out.println("===> ProductMapper InsertProduct 호출");
		mybatis.insert("product.insertProduct", pvo);
	}
	// 상점 등록페이지 - 카테고리이름 가져오기
	@Override
	public List<CategoryVO> SelectMarket(CategoryVO cvo) {
		System.out.println("===> ProductMapper SelectMarket 호출");
		return mybatis.selectList("product.selectMarket", cvo);
	}

	// 카테고리이름 통해 카테고리id찾기
	@Override
	public int findcid(String cName) {
		System.out.println("===> ProductMapper findcid 호출");
		return mybatis.selectOne("product.findcid", cName);
	}

	// 상점이름 통해 상점id찾기
	@Override
	public int findsid(String sName) {
		System.out.println("===> ProductMapper findsid 호출");
		return mybatis.selectOne("product.findsid", sName);
	}
}
