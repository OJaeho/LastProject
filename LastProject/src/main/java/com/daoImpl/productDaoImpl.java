package com.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.productDao;
import com.vo.CategoryVO;
import com.vo.ProductVO;
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

	// 카테고리 정보 가져오기
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
}
