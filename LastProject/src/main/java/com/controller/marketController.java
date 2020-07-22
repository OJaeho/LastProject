package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.service.marketService;
import com.vo.MarketVO;

@Controller
public class marketController {
		
	private static final Logger logger = LoggerFactory.getLogger(marketController.class);
	@Autowired
	private marketService service;
	
	//풋터에서 전국시장 셀렉트박스에 보여주기
	@RequestMapping("/about.user")
	public String selectMarket(Model model) {
		List<MarketVO> list= service.selectMarket();
		System.out.println(list.get(0)+"+++++++++++++++++++++++++++");
		model.addAttribute("list", list);
		return "index2";
	}
	//전국시장 지도에 셀렉트박스에 전국시장 보여주기
	@RequestMapping("/folliumtest.user")
	public String folliumtest(Model model) {
		List<MarketVO> list= service.selectMarket();
		System.out.println(list.get(0)+"+++++++++++++++++++++++++++");
		model.addAttribute("list", list);
		return "folliumtest";

	}
	//셀렉트박스에서 망원시장일 경우, 메인으로 옮겨가기 : index로 갈무리 셋팅해놓음(수정필요)
	@RequestMapping("/index2.user")
	public String marketHome(@ModelAttribute MarketVO vo, HttpSession session) {

		System.out.println("+++++++++++++++++++++++++++++++++"+vo.getMkName());
		MarketVO vo1 = service.marketHome(vo);
		int mkid=vo1.getMkId();
		session.setAttribute("mkId", mkid);
		System.out.println(mkid);
		System.out.println("세션저장 성공");
		return "index";
	}
		
}
