package com.service;

import java.util.List;

import com.vo.CategoryVO;
import com.vo.ProductVO;
import com.vo.StoreVO;

public interface productService {
	public List<ProductVO> SelectProduct(ProductVO vo);
	public List<ProductVO> SearchProduct(ProductVO vo);
	public List<CategoryVO> StoreCategory();
	public List<ProductVO> SearchCategory(CategoryVO cvo);
	public List<StoreVO> SearchCategory_store(CategoryVO cvo);
	
}
