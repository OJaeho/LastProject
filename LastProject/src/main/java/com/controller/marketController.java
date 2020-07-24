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
import com.vo.IssueVO;
import com.vo.MarketVO;

@Controller
public class marketController {

	private static final Logger logger = LoggerFactory.getLogger(marketController.class);
	@Autowired
	private marketService service;
	
		// 0. 풋터에 셀렉트박스 조회할때 호출하는 함수 : 모든 화면 jsp에 적용할 필요있음
		// 호출할때는 model.addAttribute("list", selectFooter()); 이부분 넣어주고 인자에 Model model 삽입
		public List<MarketVO> selectFooter() {
			List<MarketVO> list = service.selectMarket();		
			return list;
		}

		// 1. 메인메뉴 전국시장지도 보여주는 호출하는 함수 
		@RequestMapping("/folliumtest.user")
		public String folliumtest(Model model) {
			List<MarketVO> list = service.selectMarket();
			System.out.println(list.get(0) + "+++++++++++++++++++++++++++");
			model.addAttribute("list", list);
			return "folliumtest";

		}
	
		// 1_1. 메인메뉴에서 망원시장 선택할 경우, 시장메인화면으로 옮겨가기 : index로 갈무리 셋팅해놓음(수정필요)
		@RequestMapping("/index2.user")
		public String marketHome(@ModelAttribute MarketVO vo, HttpSession session, Model model) {
			// 풋터 '전국시장' 셀렉트함수 호출
			model.addAttribute("list", selectFooter());
			
			// 내가 선택한 시장의 mkId 세션에 저장
			MarketVO vo1 = service.marketHome(vo);			
			int mkid = vo1.getMkId();
			session.setAttribute("mkId", mkid);
			
			System.out.println(mkid);
			System.out.println("세션저장 성공");
			
			return "index";
		}		
	
	
		// 2_1. 시장소개 메뉴_DB에서 시장정보 가져오기
		@RequestMapping("/introMarket.user")
		public String introMarket(Model model, HttpSession session, @ModelAttribute MarketVO vo) {
			try {
			// 풋터 '전국시장' 셀렉트함수 호출
			model.addAttribute("list", selectFooter());

			// 시장의 key값을 세션에서 가져옴
			int mkid = (int) session.getAttribute("mkId");
			vo.setMkId(mkid);
			System.out.println(vo.getMkId() + "+++++++++++++++++++++++");
			
			//시장소개 메뉴_DB에서 시장정보 가져옴 
			MarketVO vo1 = service.introMarket(vo);
			
			// 가지고 온 날짜를 yyyy-MM-dd 형태로 자름
			vo1.setMkDate(vo1.getMkDate().substring(0,11));
			model.addAttribute("intro", vo1);

		} catch (NumberFormatException e) {

		}
		return "market/introMarket";
	}

		//3_1. 시장오시는길 메뉴_DB에서 시장정보 가져오기
		@RequestMapping("/waytoMarket.user")
		public String waytoMarket(Model model, HttpSession session, @ModelAttribute MarketVO vo) {
			try {
				// 풋터 '전국시장' 셀렉트함수 호출
				model.addAttribute("list", selectFooter());

				// 시장소개 메뉴_DB에서 시장정보 가져올때, 시장의 key값을 세션에서 가져와서 저장
				int mkid = (int) session.getAttribute("mkId");
				vo.setMkId(mkid);			
				MarketVO vo1 = service.introMarket(vo);
				model.addAttribute("intro", vo1);

			} catch (NumberFormatException e) {

			}
			return "market/waytoMarket";
		}
		// 4_1. 시장이슈_DB에서 이슈정보 가져오기
		@RequestMapping("/marketIssue.user")
		public String marketIssue(@ModelAttribute IssueVO vo, HttpSession session, Model model) {
			try {
				// 풋터 '전국시장' 셀렉트함수 호출
				model.addAttribute("list", selectFooter());
				
				// 시장이슈 메뉴_DB에서 시장정보 가져올때, 시장의 key값을 세션에서 가져옴
				int mkid = (int) session.getAttribute("mkId");
				vo.setMkId(mkid);
				System.out.println(vo.getMkId() + "===============================");
				
				// 시장 이슈, vo에서 리스트형태로 담아와 issue에서 저장
				List<IssueVO> issue = service.marketIssue(vo);
				
				// 가지고 온 날짜를 yyyy-MM-dd 형태로 자름
				for(int i=0; i<issue.size();i++) {
				issue.get(i).setIsDate(issue.get(i).getIsDate().substring(0,11));
				}
				
				model.addAttribute("issue", issue);
			
			} catch (NumberFormatException e) {
			}
			return "market/marketIssue";
		}
	
}
