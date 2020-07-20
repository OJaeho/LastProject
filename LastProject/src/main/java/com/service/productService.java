package com.service;

import java.util.List;

import com.vo.ProductVO;

public interface productService {
	public List<ProductVO> SelectProduct(ProductVO vo);
}
