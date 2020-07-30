package com.dao;

import java.util.List;

import com.vo.CategoryVO;
import com.vo.MarketVO;
import com.vo.ProductVO;
import com.vo.ReviewVO;
import com.vo.StoreVO;
import com.vo.UsersVO;

public interface productDao {
	// 상품 정보 가져오기
	public List<ProductVO> SelectProduct(ProductVO vo);

	// 상품 검색하기
	public List<ProductVO> SearchProduct(ProductVO vo);

	// 카테고리 정보 가져오기
	public List<CategoryVO> StoreCategory();

	// 상품 카테고리별로 분류
	public List<ProductVO> SearchCategory(CategoryVO cvo);

	// 점포 카테고리별로 분류
	public List<StoreVO> SearchCategory_store(CategoryVO cvo);

	// 선택한 상품 정보 가져오기
	public List<ProductVO> ProductInfo(ProductVO vo);

	// 선택한 상품 정보 가져오기
	public List<ProductVO> ProductOption(ProductVO vo);

	// 선택한 점포 정보 가져오기
	public List<StoreVO> StoreInfo(StoreVO vo);
	
	// 리뷰 정보 넣기
	public void InsertReview(ReviewVO rvo);
	
	// 리뷰 가져오기
	public List<ReviewVO> SelectReview(ReviewVO rvo);
	
	// 상점 등록하기
	public void InsertStore(StoreVO svo);
	
	// 상품 등록하기
		public void InsertProduct(ProductVO pvo);
	
	// 상점 등록페이지 - 카테고리이름 가져오기
	public List<CategoryVO> SelectMarket(CategoryVO cvo);
	
	//카테고리이름 통해 카테고리id찾기
	public int findcid(String cName);
	//상점이름 통해 상점id찾기
	public int findsid(String sName);
}
