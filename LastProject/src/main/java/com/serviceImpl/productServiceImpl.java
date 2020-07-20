package com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daoImpl.productDaoImpl;
import com.service.productService;
import com.vo.ProductVO;

@Service("productService")
public class productServiceImpl implements productService{
	
	@Autowired
	private productDaoImpl productDao;
	
	
	@Override
	public List<ProductVO> SelectProduct(ProductVO vo) {
		System.out.println("serv impl");
		return productDao.SelectProduct(vo); 
	}

}
