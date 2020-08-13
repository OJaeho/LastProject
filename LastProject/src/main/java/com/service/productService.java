package com.service;

import java.util.HashMap;
import java.util.List;

import com.vo.BuyVO;
import com.vo.CategoryVO;
import com.vo.ProductVO;
import com.vo.ReviewVO;
import com.vo.StoreVO;

public interface productService {
	// 상품 정보 가져오기
	public List<ProductVO> SelectProduct(ProductVO vo);

	// 상품 검색하기
	public List<ProductVO> SearchProduct(ProductVO vo);

	// 높은 가격 순 상품 가져오기
	public List<ProductVO> HighItem(ProductVO vo);

	// 낮은 가격 순 상품 가져오기
	public List<ProductVO> LowItem(ProductVO vo);

	// 카테고리 정보 가져오기
	public List<CategoryVO> StoreCategory();

	// 상품 카테고리별로 분류
	public List<ProductVO> SearchCategory(CategoryVO cvo);

	// 점포 카테고리별로 분류
	public List<StoreVO> SearchCategory_store(CategoryVO cvo);

	// 선택된 상품 정보 가져오기
	public List<ProductVO> ProductInfo(ProductVO vo);

	// 선택된 상품 옵션 가져오기
	public List<ProductVO> ProductOption(ProductVO vo);

	// 선택된 점포 정보 가져오기
	public List<StoreVO> StoreInfo(StoreVO vo);

	// 리뷰 정보 넣기
	public void InsertReview(ReviewVO rvo);

	// 리뷰 가져오기
	public List<ReviewVO> SelectReview(ProductVO rvo);
	
	// 리뷰 카운트 제한
	public int getReviewCnt(ReviewVO vo);
	
	// 상점 등록페이지 - 카테고리이름 가져오기
	public List<CategoryVO> SelectMarket(CategoryVO cvo);

	// 상점 등록하기
	public void InsertStore(StoreVO svo);

	// 상품 등록하기
	public void InsertProduct(ProductVO pvo);

	// 카테고리이름 통해 카테고리id찾기
	public int findcid(String cName);

	// 상점명 통해 상점id찾기
	public int findsid(String sName);
	
	// 배너 장바구니
	public List<HashMap<String, Object>> selectcart(BuyVO bvo);
	
	
	public String selectedstore(String username);
}
