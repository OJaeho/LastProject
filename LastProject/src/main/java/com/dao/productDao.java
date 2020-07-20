package com.dao;

import java.util.List;

import com.vo.ProductVO;

public interface productDao {
	
	
	public List<ProductVO> SelectProduct(ProductVO vo);
}
