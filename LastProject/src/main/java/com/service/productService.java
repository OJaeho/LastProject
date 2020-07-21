package com.service;

import java.util.List;

import com.vo.CategoryVO;
import com.vo.ProductVO;

public interface productService {
	public List<ProductVO> SelectProduct(ProductVO vo);
	public List<ProductVO> SearchProduct(ProductVO vo);
	public List<CategoryVO> StoreCategory();
}
