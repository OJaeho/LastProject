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
import org.springframework.web.bind.annotation.RequestParam;

import com.service.payviewService;
import com.vo.BuyVO;
import com.vo.PayVO;
import com.vo.ProductVO;

@Controller
public class payviewController {


	@Autowired
	private payviewService service;

	@Autowired
	private payviewController pay;

	// 풋터 '전국시장' 셀렉트함수 호출
	@Autowired
	private marketController con;

	// 결제 완료 페이지이동
	@RequestMapping(value = "/getpayview.user")
	public String SelectProduct(ProductVO vo, PayVO pvo, Model model, HttpSession session, HttpServletRequest req,
			@RequestParam(value="GroupId", defaultValue="0") int GroupId) {
		pvo.setGroupId(GroupId);
		List<PayVO> item = service.getorderitem(pvo);
		List<PayVO> user = service.getorderuser(pvo);
		int price = service.getorderprice(pvo);
		
		model.addAttribute("getorderitem", item);
		model.addAttribute("getorderuser", user);
		model.addAttribute("getorderprice", price);
		
		return "pay/afterpay";
	}

}
