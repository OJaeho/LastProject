package com.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.marketService;
import com.vo.MarketVO;

@Controller
public class marketController {
		
	private static final Logger logger = LoggerFactory.getLogger(marketController.class);
	@Autowired
	private marketService service;

	@RequestMapping("/index2.user")
	public String selectMarket(Model model) {
		List<MarketVO> list= service.selectMarket();
		System.out.println(list.get(0)+"+++++++++++++++++++++++++++");
		model.addAttribute("list", list);
		return "index2";
	}
		
}
