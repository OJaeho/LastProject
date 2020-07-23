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
public class productDaoImpl implements productDao{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<ProductVO> SelectProduct(ProductVO vo) {
		System.out.println("===> ProductMapper selectproduct 호출");
		return mybatis.selectList("product.selectProduct",vo);
	}
	@Override
	public List<ProductVO> SearchProduct(ProductVO vo) {
		System.out.println("===> ProductMapper Searchproduct 호출");
		return mybatis.selectList("product.searchProduct",vo);
	}
	public List<CategoryVO> StoreCategory() {
		System.out.println("===> ProductMapper CategoryStore 호출");
		return mybatis.selectList("product.storeCategory");
	}
	@Override
	public List<ProductVO> SearchCategory(CategoryVO cvo) {
		System.out.println("===> ProductMapper SearchCategory 호출");
		return mybatis.selectList("product.searchCategory",cvo);
	}
	@Override
	public List<StoreVO> SearchCategory_store(CategoryVO cvo) {
		System.out.println("===> ProductMapper SearchCategory 호출");
		return mybatis.selectList("product.searchCategory_store",cvo);
	}
}
