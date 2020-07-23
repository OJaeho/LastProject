package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.productService;
import com.vo.CategoryVO;
import com.vo.ProductVO;
import com.vo.StoreVO;

@Controller
public class productController{
	
	@Autowired
	private productService service;
	
	//상품 리스트 가져오기
	@RequestMapping(value="/getproduct.user")
	public String SelectProduct(ProductVO vo,Model model){
		List<ProductVO> product = service.SelectProduct(vo);
		List<CategoryVO> category = service.StoreCategory();
		model.addAttribute("categoryget", category);
		model.addAttribute("productget", product);
		return "product/getproduct";
	}
	//상품 검색
	@RequestMapping(value="/searchproduct.user")
	public String SearchProduct(ProductVO vo,Model model) {
		List<ProductVO> product = service.SearchProduct(vo);
		List<CategoryVO> category = service.StoreCategory();
		model.addAttribute("productget", product);
		model.addAttribute("categoryget", category);
		return "product/getproduct";
	}
	
	
	//상품 카테고리
	@RequestMapping(value="/storecategory.user")
	public String StoreCategory(Model model) {
		//카테고리 가져오기
		return "product/getproduct";
	}
	
	//상품 디테일 페이지 이동
	@RequestMapping(value="/product-detail.user")
	public String detail(String pName){
		System.out.println(pName);
		return "product/product-detail";
	}
	
	//점포 디테일 페이지 이동
		@RequestMapping(value="/store-detail.user")
		public String detailstore(String pName){
			return "product/store-detail";
		}
	//업종별 점포 카테고리 페이지
	@RequestMapping(value="/storelist.user")
	public String store(Model model){
		List<CategoryVO> category = service.StoreCategory();
		model.addAttribute("categoryget", category);
		return "product/storelist";
	}

	//카테고리 검색
	@RequestMapping(value="/categoryitem.user")
	public String SearchCategory(CategoryVO cvo,ProductVO vo,Model model) {
		List<ProductVO> product = service.SearchProduct(vo);
		List<CategoryVO> category = service.StoreCategory();
		List<ProductVO> cateitem = service.SearchCategory(cvo);
		System.out.println(cvo.getcName());
		model.addAttribute("productget", product);
		model.addAttribute("categoryget", category);
		model.addAttribute("productget", cateitem);
		return "product/getproduct";
	}
	//점포리스트 페이지
	@RequestMapping(value="/showstore.user")
	public String ShowStore(CategoryVO cvo,Model model) {
		List<CategoryVO> category = service.StoreCategory();
		List<StoreVO> catestore = service.SearchCategory_store(cvo);
		System.out.println(cvo.getcName());
		model.addAttribute("storeget", catestore);
		model.addAttribute("categoryget", category);
		return "product/getstore";
	}
	
}