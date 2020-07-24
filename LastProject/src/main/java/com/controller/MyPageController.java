package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;

public class MyPageController {

	//권한별 마이페이지 이동
	@RequestMapping("/mypage.loguser")
	public String preMypage(HttpServletRequest request) {
		if (request.isUserInRole("ROLE_ADMIN")){
			return "redirect:/Amypage.admin";
		}else if (request.isUserInRole("ROLE_Market")) {
			return "redirect:/Mmypage.market";
		}else if (request.isUserInRole("ROLE_Seller")) {
			return "redirect:/Smypage.seller";
		}else {
			return "redirect:/Umypage.loguser";
		}
	}
	//시스템 관리자 마이페이지
	@RequestMapping("/Amypage.admin")
	public String Amypage() {
		return "";
	}
	//마켓 관리자 마이페이지
	@RequestMapping("/Mmypage.market")
	public String Mmypage() {
		return "";
	}
	//판매자 마이페이지
	@RequestMapping("/Smypage.seller")
	public String Smypage() {
		return "";
	}
	//user 마이페이지
	@RequestMapping("/Umypage.loguser")
	public String Umypage() {
		return "";
	}
}
