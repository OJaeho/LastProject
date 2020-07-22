package com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daoImpl.productDaoImpl;
import com.service.productService;
import com.vo.CategoryVO;
import com.vo.ProductVO;

@Service("productService")
public class productServiceImpl implements productService{
	
	@Autowired
	private productDaoImpl productDao;
	
	
	//상품 리스트 가져오기
	@Override
	public List<ProductVO> SelectProduct(ProductVO vo) {
		System.out.println("service select");
		return productDao.SelectProduct(vo); 
	}
	//상품 검색
	@Override
	public List<ProductVO> SearchProduct(ProductVO vo) {
		System.out.println("service product search");
		return productDao.SearchProduct(vo); 
	}
	//카테고리 가져오기
	@Override
	public List<CategoryVO> StoreCategory() {
		System.out.println("service getcategory");
		return productDao.StoreCategory(); 
	}
	//카테고리 통해 검색
	@Override
	public List<ProductVO> SearchCategory(CategoryVO cvo) {
		System.out.println("service category search");
		return productDao.SearchCategory(cvo); 
	}
	

}
