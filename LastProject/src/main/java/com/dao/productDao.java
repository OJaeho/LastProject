package com.dao;

import java.util.List;

import com.vo.CategoryVO;
import com.vo.ProductVO;
import com.vo.StoreVO;

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
}
