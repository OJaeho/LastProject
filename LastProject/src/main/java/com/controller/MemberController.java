package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.service.memberService;
import com.serviceImpl.MemberSerivceImpl;
import com.vo.UsersVO;

@Controller
public class MemberController {
	
	@Autowired
	private MemberSerivceImpl service;
	
	@Autowired
	private marketController con; //footer
	
	@RequestMapping(value="/memberRegist.user")
	public String MemberRegist(Model model) {
		model.addAttribute("list", con.selectFooter());//footer
		return "member/memberRegist";
	}
	
	//회원 가입 버튼 눌렀을 때
	@RequestMapping(value="/insertMember.user")
	public String insertMember(UsersVO vo) {
		vo.getmAddr();
		service.insertMember(vo);
		return "member/registFinish";
	}
	

	/*
	 *아이디 중복체크
	 */
	@ResponseBody//(****************비동기통신을 해주세요) AJAX통신을 하는애는 반드시 이 어노테이션이 있어야함 
	@RequestMapping(value = "/idCheck.user", produces="application/test; charset=UTF-8")
	public String idcheck(UsersVO vo) {
		UsersVO result = service.idCheck_Login(vo);
		String message = "중복된 아이디입니다";
		if(result==null) message="사용가능한 아이디입니다";
		return message;
	} 
	
	/*
	 *전화번호 중복체크
	 */
	
	@ResponseBody//(****************비동기통신을 해주세요) AJAX통신을 하는애는 반드시 이 어노테이션이 있어야함 
	@RequestMapping(value = "/telCheck.user", produces="application/test; charset=UTF-8")
	public String telcheck(UsersVO vo) {
		UsersVO result = service.telCheck_Login(vo);
		String message = "중복된 전화번호입니다";
		if(result==null) message="사용가능한 전화번호입니다";
		 
		return message;
	} 
	
	
		
	
}
