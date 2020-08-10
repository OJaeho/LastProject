package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.adminService;
import com.vo.UsersVO;

@Controller
public class AdminController {

	@Autowired
	private adminService service;

	// 풋터 '전국시장' 셀렉트함수 호출
	@Autowired
	private marketController con;

	// 상품 디테일 페이지 이동
	@RequestMapping(value = "/membergetpage.market")
	public String membergetpage(Model model, HttpSession session, HttpServletRequest request) {
		model.addAttribute("list", con.selectFooter());
		List<UsersVO> Member = service.selectmember();
		model.addAttribute("memberget", Member);
		return "mypage/MemberList";
	}

	@RequestMapping(value = "/searchuser.market")
	public String searchuser(Model model, String keyword, HttpSession session, HttpServletRequest request) {
		model.addAttribute("list", con.selectFooter());
		List<UsersVO> Member = service.searchmember(keyword);
		model.addAttribute("memberget", Member);
		return "mypage/MemberList";
	}

	@RequestMapping(value = "/marketsearch.market")
	public String marketsearch(Model model, String keyword, HttpSession session, HttpServletRequest request) {
		model.addAttribute("list", con.selectFooter());
		List<UsersVO> Member = service.marketsearch(keyword);
		model.addAttribute("memberget", Member);
		return "mypage/MemberList";
	}

	@RequestMapping(value = "/sellersearch.market")
	public String sellersearch(Model model, String keyword, HttpSession session, HttpServletRequest request) {
		model.addAttribute("list", con.selectFooter());
		List<UsersVO> Member = service.sellersearch(keyword);
		model.addAttribute("memberget", Member);
		return "mypage/MemberList";
	}

	@RequestMapping(value = "/usersearch.market")
	public String usersearch(Model model, String keyword, HttpSession session, HttpServletRequest request) {
		model.addAttribute("list", con.selectFooter());
		List<UsersVO> Member = service.usersearch(keyword);
		model.addAttribute("memberget", Member);
		return "mypage/MemberList";
	}

	@RequestMapping(value = "/memberdetail.market")
	public String memberdetail(Model model, String userName, HttpSession session, HttpServletRequest request) {
		model.addAttribute("list", con.selectFooter());
		List<Object> auth = service.getauth(userName);
		for (Object a : auth) {
			System.out.println(a);
			if (a.equals("ROLE_MARKET")) {
				return "mypage/MarketDetail";
			} else if (a.equals("ROLE_SELLER")) {
				return "mypage/SellerDetail";
			}
		}
		return "mypage/UserDetail";

	}
}
