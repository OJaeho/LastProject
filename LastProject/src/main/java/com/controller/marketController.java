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


import com.service.marketService;
import com.vo.MarketVO;

@Controller
public class marketController {

	private static final Logger logger = LoggerFactory.getLogger(marketController.class);
	@Autowired
	private marketService service;

	// 시장소개 메뉴_DB에서 시장정보 가져오기
	@RequestMapping("/introMarket.user")
	public String introMarket(Model model, HttpSession session, @ModelAttribute MarketVO vo) {
		try {
			model.addAttribute("list", selectFooter());

			// 시장소개 메뉴_DB에서 시장정보 가져올때, 시장의 key값을 세션에서 가져옴
			int mkid = (int) session.getAttribute("mkId");
			vo.setMkId(mkid);
			System.out.println(vo.getMkId() + "+++++++++++++++++++++++");
			MarketVO vo1 = service.introMarket(vo);
			//
			vo1.setMkDate(vo1.getMkDate().substring(0,11));
			model.addAttribute("intro", vo1);

		} catch (NumberFormatException e) {

		}
		return "market/introMarket";
	}

		// 시장오시는길 메뉴_DB에서 시장정보 가져오기
		@RequestMapping("/waytoMarket.user")
		public String waytoMarket(Model model, HttpSession session, @ModelAttribute MarketVO vo) {
			try {
				List<MarketVO> list = service.selectMarket();				
				model.addAttribute("list", list);

				// 시장소개 메뉴_DB에서 시장정보 가져올때, 시장의 key값을 세션에서 가져옴
				int mkid = (int) session.getAttribute("mkId");
				vo.setMkId(mkid);			
				MarketVO vo1 = service.introMarket(vo);
				model.addAttribute("intro", vo1);

			} catch (NumberFormatException e) {

			}
			return "market/waytoMarket";
		}
	

	// 전국시장 지도에 셀렉트박스에 전국시장 보여주기
	@RequestMapping("/folliumtest.user")
	public String folliumtest(Model model) {
		List<MarketVO> list = service.selectMarket();
		System.out.println(list.get(0) + "+++++++++++++++++++++++++++");
		model.addAttribute("list", list);
		return "folliumtest";

	}

	// 셀렉트박스에서 망원시장일 경우, 메인으로 옮겨가기 : index로 갈무리 셋팅해놓음(수정필요)
	@RequestMapping("/index2.user")
	public String marketHome(@ModelAttribute MarketVO vo, HttpSession session) {
		System.out.println("+++++++++++++++++++++++++++++++++" + vo.getMkName());
		MarketVO vo1 = service.marketHome(vo);
		int mkid = vo1.getMkId();
		session.setAttribute("mkId", mkid);
		System.out.println(mkid);
		System.out.println("세션저장 성공");
		return "index";
	}
	//풋터에 셀렉트박스 조회할때 호출하는 함수 : 모든 화면 jsp에 적용할 필요있음
	public List<MarketVO> selectFooter() {
		List<MarketVO> list = service.selectMarket();
		return list;
	}

}
