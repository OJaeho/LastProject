package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.productService;
import com.vo.ProductVO;

@Controller
public class product_Controller{
	
	@Autowired
	private productService service;
	
	@RequestMapping("/product.do")
	public String SelectProduct(ProductVO vo,Model model) {
		System.out.println("controller");
		List<ProductVO> res = service.SelectProduct(vo);
		model.addAttribute("productList", res);
		return "product";
		
	}
}