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
public class productController {

	@Autowired
	private productService service;

	// 상품 리스트 가져오기
	@RequestMapping(value = "/getproduct.user")
	public String SelectProduct(ProductVO vo, Model model) {
		List<ProductVO> product = service.SelectProduct(vo);
		List<CategoryVO> category = service.StoreCategory();
		// 카테고리 정보 가져오기
		model.addAttribute("categoryget", category);
		// 상품 정보 가져오기
		model.addAttribute("productget", product);
		return "product/getproduct";
	}

	// 상품 검색
	@RequestMapping(value = "/searchproduct.user")
	public String SearchProduct(ProductVO vo, Model model) {
		List<ProductVO> product = service.SearchProduct(vo);
		List<CategoryVO> category = service.StoreCategory();
		// 상품 정보 가져오기
		model.addAttribute("productget", product);
		// 카테고리 정보 가져오기
		model.addAttribute("categoryget", category);
		return "product/getproduct";
	}

	// 상품 카테고리 통해 검색
	@RequestMapping(value = "/categoryitem.user")
	public String SearchCategory(CategoryVO cvo, ProductVO vo, Model model) {
		List<ProductVO> product = service.SearchProduct(vo);
		List<CategoryVO> category = service.StoreCategory();
		List<ProductVO> cateitem = service.SearchCategory(cvo);
		System.out.println(cvo.getcName());
		// 상품 정보 가져오기
		model.addAttribute("productget", product);
		// 카테고리 정보 가져오기
		model.addAttribute("categoryget", category);
		// 카테고리 선택된 상품 정보 가져오기
		model.addAttribute("productget", cateitem);
		return "product/getproduct";
	}

	// 상품 디테일 페이지 이동
	@RequestMapping(value = "/product-detail.user")
	public String detailproduct(String pName, int pPrice,Model model,ProductVO vo) {
		List<ProductVO> productinfo = service.ProductInfo(vo);
		List<ProductVO> productoption = service.ProductOption(vo);
		model.addAttribute("productget",productinfo);
		model.addAttribute("optionget",productoption);
		return "product/product-detail";
	}

	// 업종별 점포 목록 페이지
	@RequestMapping(value = "/storelist.user")
	public String store(Model model) {
		List<CategoryVO> category = service.StoreCategory();
		// 카테고리 정보 가져오기
		model.addAttribute("categoryget", category);
		return "store/storelist";
	}

	// 점포 디테일 페이지 이동
	@RequestMapping(value = "/store-detail.user")
	public String detailstore(String sName,Model model,StoreVO vo) {
		List<StoreVO> storeinfo = service.StoreInfo(vo);
		model.addAttribute("storeget",storeinfo);
		return "store/store-detail";
	}

	// 점포리스트 페이지
	@RequestMapping(value = "/showstore.user")
	public String ShowStore(CategoryVO cvo, Model model) {
		List<CategoryVO> category = service.StoreCategory();
		List<StoreVO> catestore = service.SearchCategory_store(cvo);
		System.out.println(cvo.getcName());
		// 카테고리 통해 검색된 점포 정보 가져오기
		model.addAttribute("storeget", catestore);
		// 카테고리 정보 가져오기
		model.addAttribute("categoryget", category);
		return "store/getstore";
	}
	
}