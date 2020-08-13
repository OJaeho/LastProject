package com.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.adminService;
import com.vo.UpdateMarketVO;
import com.vo.UpdateStoreVO;
import com.vo.UsersVO;

@Controller
public class AdminController {

	@Autowired
	private adminService service;

	// 풋터 '전국시장' 셀렉트함수 호출
	@Autowired
	private marketController con;

	// 회원리스트 페이지 이동
	@RequestMapping(value = "/membergetpage.market")
	public String membergetpage(Model model, HttpSession session, HttpServletRequest request) {
		model.addAttribute("list", con.selectFooter());
		List<UsersVO> Member = service.selectmember();
		model.addAttribute("memberget", Member);
		return "mypage/MemberList";
	}
	// 회원검색
	@RequestMapping(value = "/searchuser.market")
	public String searchuser(Model model, String keyword, HttpSession session, HttpServletRequest request) {
		model.addAttribute("list", con.selectFooter());
		List<UsersVO> Member = service.searchmember(keyword);
		model.addAttribute("memberget", Member);
		return "mypage/MemberList";
	}
	// 시장관리자 검색
	@RequestMapping(value = "/marketsearch.market")
	public String marketsearch(Model model, String keyword, HttpSession session, HttpServletRequest request) {
		model.addAttribute("list", con.selectFooter());
		List<UsersVO> Member = service.marketsearch(keyword);
		model.addAttribute("memberget", Member);
		return "mypage/MemberList";
	}
	// 판매자 검색
	@RequestMapping(value = "/sellersearch.market")
	public String sellersearch(Model model, String keyword, HttpSession session, HttpServletRequest request) {
		model.addAttribute("list", con.selectFooter());
		List<UsersVO> Member = service.sellersearch(keyword);
		model.addAttribute("memberget", Member);
		return "mypage/MemberList";
	}
	// 고객 검색
	@RequestMapping(value = "/usersearch.market")
	public String usersearch(Model model, String keyword, HttpSession session, HttpServletRequest request) {
		model.addAttribute("list", con.selectFooter());
		List<UsersVO> Member = service.usersearch(keyword);
		model.addAttribute("memberget", Member);
		return "mypage/MemberList";
	}
	// 고객디테일페이지 이동
	@RequestMapping(value = "/memberdetail2.user")
	public String memberdetail(Model model, String userName, HttpSession session, HttpServletRequest request) {
		String Id = userName;
		if(Id ==null) {
			Id=request.getRemoteUser();
		}
		model.addAttribute("list", con.selectFooter());//footer
		List<Object> auth = service.getauth(Id);
		for (Object a : auth) {
			
			if (a.equals("ROLE_MARKET")) {
				
				List<HashMap<String, Object>> marketinfo = service.marketinfoget(Id);
				model.addAttribute("marketinfoget", marketinfo);
				return "mypage/MarketDetail";
			} else if (a.equals("ROLE_SELLER")) {
				List<HashMap<String, Object>> sellerinfo = service.sellerinfoget(Id);
				model.addAttribute("sellerinfoget", sellerinfo);
				return "mypage/SellerDetail";
			}
		}
		List<UsersVO> userinfo = service.userinfoget(Id);
		model.addAttribute("userinfoget", userinfo);
		return "mypage/UserDetail";
	}
	
	//고객 수정
	@RequestMapping(value = "/updateuser.user")
	public String updateuser(Model model, UsersVO uvo, HttpSession session, HttpServletRequest request) {
			service.updateuser(uvo); 
		return "redirect:/membergetpage.market";
	}
	// 고객 삭제
	@RequestMapping(value = "/deleteuser.market")
	public String deleteuser(Model model, UsersVO uvo, HttpSession session, HttpServletRequest request) {
			service.deleteuser(uvo); 
		return "redirect:/membergetpage.market";
	}
	
	
	
	// 시장관리자 수정
	@RequestMapping(value = "/updatemarket.market")
	public String updatemarket(Model model, UpdateMarketVO upvo,UsersVO uvo,String mkName, HttpSession session, HttpServletRequest request) {
		upvo.setmAddr(uvo.getAddr());
		upvo.setmEmail(uvo.getmEmail());
		upvo.setMkName(mkName);
		upvo.setmName(uvo.getmName());
		upvo.setmTel(uvo.getmTel());
		upvo.setPassword(uvo.getPassword());
		upvo.setUserName(uvo.getUserName());
		service.updatemarket(upvo);
		return "redirect:/membergetpage.market";
	}
	//시장관리자 삭제
	@RequestMapping(value = "/deletemarket.market")
	public String deletemarket(Model model, UsersVO uvo, HttpSession session, HttpServletRequest request) {
			service.deletemarket(uvo); 
		return "redirect:/membergetpage.market";
	}
	
	
	
	// 판매자 수정
		@RequestMapping(value = "/updateseller.market")
		public String updateseller(Model model, UpdateStoreVO usvo,UsersVO uvo,String sName, HttpSession session, HttpServletRequest request) {
			usvo.setmAddr(uvo.getAddr());
			usvo.setmEmail(uvo.getmEmail());
			usvo.setsName(sName);
			usvo.setmName(uvo.getmName());
			usvo.setmTel(uvo.getmTel());
			usvo.setPassword(uvo.getPassword());
			usvo.setUserName(uvo.getUserName());
			service.updateseller(usvo);
			return "redirect:/membergetpage.market";
		}
		//판매자 삭제
		@RequestMapping(value = "/deleteseller.market")
		public String deleteseller(Model model, UsersVO uvo, HttpSession session, HttpServletRequest request) {
				service.deleteseller(uvo); 
			return "redirect:/membergetpage.market";
		}
}
