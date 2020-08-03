package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {
	@Autowired
	private marketController con; //footer를 위해

	// 권한별 마이페이지 이동
	@RequestMapping("/mypage.checking")
	public String preMypage(HttpServletRequest request) {
		System.out.println("4" + request.isUserInRole("ROLE_ADMIN"));
		System.out.println("3" + request.isUserInRole("ROLE_MARKET"));
		System.out.println("2" + request.isUserInRole("ROLE_SELLER"));
		System.out.println("1" + request.isUserInRole("ROLE_USER"));
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
	public String payList(String pNum, HttpServletRequest request) {
		String pageNum = "1";
		if (pNum != null) {
			pageNum = pNum;
		}
		//현재 로그인 된 아이디
		String id= request.getRemoteUser();
		//현재 로그인된 아이디의 구매목록 불러오기
		model.addAttribute("getQnAList", service.getPayList(pageNum,id));
		model.addAttribute("list", con.selectFooter()); //footer처리
		model.addAttribute("totalpNum", service.getTotalCount("pay"));// qna 총 페이지 수
		
	}
}
