package com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daoImpl.productDaoImpl;
import com.service.productService;
import com.vo.CategoryVO;
import com.vo.ProductVO;
import com.vo.ReviewVO;
import com.vo.StoreVO;

@Service("productService")
public class productServiceImpl implements productService {

	@Autowired
	private productDaoImpl productDao;

	// 상품 정보 가져오기
	@Override
	public List<ProductVO> SelectProduct(ProductVO vo) {
		System.out.println("service select");
		return productDao.SelectProduct(vo);
	}

	// 상품 검색하기
	@Override
	public List<ProductVO> SearchProduct(ProductVO vo) {
		System.out.println("service product search");
		return productDao.SearchProduct(vo);
	}

	// 카테고리 정보 가져오기
	@Override
	public List<CategoryVO> StoreCategory() {
		System.out.println("service getcategory");
		return productDao.StoreCategory();
	}

	// 상품 카테고리별로 분류
	@Override
	public List<ProductVO> SearchCategory(CategoryVO cvo) {
		System.out.println("service category search");
		return productDao.SearchCategory(cvo);
	}

	// 점포 카테고리별로 분류
	@Override
	public List<StoreVO> SearchCategory_store(CategoryVO cvo) {
		System.out.println("service category search");
		return productDao.SearchCategory_store(cvo);
	}

	// 선택된 상품 정보 가져오기
	@Override
	public List<ProductVO> ProductInfo(ProductVO vo) {
		System.out.println("service ProductInfo");
		return productDao.ProductInfo(vo);
	}

	// 선택된 상품 옵션 가져오기
	@Override
	public List<ProductVO> ProductOption(ProductVO vo) {
		System.out.println("service ProductOption");
		return productDao.ProductOption(vo);
	}

	// 선택된 점포 정보 가져오기
	@Override
	public List<StoreVO> StoreInfo(StoreVO vo) {
		System.out.println("service storeinfo");
		return productDao.StoreInfo(vo);
	}
	
	// 리뷰 정보 넣기
	@Override
	public void InsertReview(ReviewVO rvo) { 
		System.out.println("service InsertReview");
		productDao.InsertReview(rvo); 
	}

}
