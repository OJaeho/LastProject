package com.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.service.marketService;
import com.service.payService;
import com.vo.PayVO;

@Controller
public class payController {
	
	private static final Logger logger = LoggerFactory.getLogger(marketController.class);
	@Autowired
	private marketService service;
	
	@Autowired
	private payService payservice;
	
	@Autowired
	private marketController con; 
	
	//장바구니 창에서 결제하기 버튼 눌렀을때  
		@RequestMapping("/payment.user")
		public void payment(PayVO vo, @RequestParam List<Integer> boxValue,Model model) {
			System.out.println(boxValue + "컨트롤");
			model.addAttribute("list", con.selectFooter());
			model.addAttribute("result", payservice.paySelect(boxValue));
		}
}

