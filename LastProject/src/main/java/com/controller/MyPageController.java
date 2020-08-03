package com.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.mypageService;

@Controller
public class MyPageController {
	@Autowired
	private marketController con; //footer를 위해

	@Autowired
	private mypageService service; 
	// 권한별 마이페이지 이동
	@RequestMapping("/mypage.checking")
	public String preMypage(HttpServletRequest request) {
		if (request.isUserInRole("ROLE_ADMIN")) {
			return "redirect:/Amypage.master";
		} else if (request.isUserInRole("ROLE_MARKET")) {
			return "redirect:/Mmypage.market";
		} else if (request.isUserInRole("ROLE_SELLER")) {
			return "redirect:/Smypage.seller";
		} else {
			return "redirect:/Umypage.user";
		}


	}

	// 시스템 관리자 마이페이지
	@RequestMapping("/Amypage.master")
	public String Amypage() {
		return "mypage/Amypage";
	}

	// 마켓 관리자 마이페이지
	@RequestMapping("/Mmypage.market")
	public String Mmypage() {
		return "mypage/Mmypage";
	}

	// 판매자 마이페이지
	@RequestMapping("/Smypage.seller")
	public String Smypage() {
		return "mypage/Smypage";
	}

	// user 마이페이지
	@RequestMapping("/Umypage.user")
	public String Umypage() {
		return "mypage/Umypage";
	}
	//구매 목록 페이지
	@RequestMapping("/PayList.user")
	public String payList(String pNum, HttpServletRequest request,Model model) {
		String pageNum = "1";
		if (pNum != null) {
			pageNum = pNum;
		}
		//현재 로그인 된 아이디
		String id= request.getRemoteUser();
		//현재 로그인된 아이디의 구매목록 불러오기
		model.addAttribute("list", con.selectFooter()); //footer처리
		HashMap map = new HashMap();
		map.put("table", "pay"); //내가 출력할 리스트 행갯수 출력을 위해 조건을 hashmap에 저장
		map.putIfAbsent("condition1",id );
		model.addAttribute("totalpNum", service.getTotalCount(map));// qna 총 페이지 수
		model.addAttribute("payList", service.payList(pageNum,id));
		
		return "mypage/PayList";
		
	}
}
