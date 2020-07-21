package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.productService;
import com.vo.CategoryVO;
import com.vo.ProductVO;

@Controller
public class productController{
	
	@Autowired
	private productService service;
	
	//상품 리스트 가져오기
	@RequestMapping(value="/getproduct.user")
	public String SelectProduct(ProductVO vo,Model model){
		List<ProductVO> product = service.SelectProduct(vo);
		List<CategoryVO> category = service.StoreCategory();
		System.out.println(category.get(0).getcName()+"8888888888888888");
		model.addAttribute("categoryget", category);
		model.addAttribute("productget", product);
		return "product/getproduct";
	}
	//상품 검색
	@RequestMapping(value="/searchproduct.user")
	public String SearchProduct(ProductVO vo,Model model) {
		List<ProductVO> res = service.SearchProduct(vo);
		model.addAttribute("productget", res);
		return "product/getproduct";
	}
	
	
	//상품 카테고리
	@RequestMapping(value="/storecategory.user")
	public String StoreCategory(Model model) {
		//카테고리 가져오기
		System.out.println("연겨르르르르르ㅡ르");
		
		return "product/getproduct";
	}
	
	
	
	
}