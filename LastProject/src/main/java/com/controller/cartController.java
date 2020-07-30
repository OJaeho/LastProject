package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.service.cartService;
import com.service.marketService;
import com.vo.BuyVO;

@Controller
public class cartController {
	
	private static final Logger logger = LoggerFactory.getLogger(marketController.class);
	@Autowired
	private marketService service;
	
	@Autowired
	private cartService cartservice;
	
	@ResponseBody
	@RequestMapping(value = "/insertCart.user", produces="application/json; charset=utf-8")
	public String cartInsert(BuyVO vo, HttpServletRequest request, Model model, HttpSession session) {
		vo.setUserName(request.getRemoteUser());
		vo.setMkId((int)session.getAttribute("mkId"));
		Gson gson = new Gson();
		// buy테이블에 같은 상태, 옵션을 갖고 있는 상품이 있는지 검색
		int result = cartservice.selectCart(vo);
		// 검색 값이 없다면 테이블에 데이터 insert
		if(result == 0) {
			int result1 = cartservice.cartInsert(vo);
		// buy테이블에 값이 제대로 insert된다면 리스트 받아옴
			if(result1 == 1) {
				List<BuyVO> list = cartservice.cartSelect(vo);
				return gson.toJson(list);
			}
		// 검색 결과 같은 값을 가진 데이터가 있다면 데이터 update
		}else if(result != 0) {
			int result2 = cartservice.cartUpdate(vo);
		//update가 제대로 된다면
			if(result2 == 1) {
		// 조회한 값을 추출
				List<BuyVO> list = cartservice.cartSelect(vo);
				return gson.toJson(list);				
			}
		}
		return "실패";
	}
	//장바구니 페이지 목록 불러오기
	@RequestMapping("/shopping.user")
	public String shoppingCart(BuyVO vo,HttpServletRequest request, Model model){
		String user = request.getRemoteUser();
		vo.setUserName(user);
		List<BuyVO> result = cartservice.shoppingcart(vo);
		int total = 0;
		for(int i =0; i<result.size(); i++) {
			total += result.get(i).getbPrice() * result.get(i).getbQuantity();
		}
		model.addAttribute("list", result);
		model.addAttribute("total", total);
		
		return "/shoppingCart";
	}
	
	//장바구니 페이지 상품 삭제
	@RequestMapping("/deleteShoppingCart.user")
	public String deleteCart(String bId, HttpServletRequest request){
		int bId1 = Integer.parseInt(bId);
		cartservice.deleteShoppingCart(bId1);
		return "redirect:/shopping.user";
	}
	
}

