package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.MemberSerivce;
import com.vo.UsersVO;

@Controller
public class MemberController {
	
	@Autowired
	private MemberSerivce service;
	
	@RequestMapping(value="/memberRegist.user")
	public String MemberRegist() {
		return "member/memberRegist";
	}
	
	//회원 가입 버튼 눌렀을 때
	@RequestMapping(value="/insertMember.user")
	public String insertMember(UsersVO vo) {
		vo.getmAddr();
		service.insertMember(vo);
		return "member/registFinish";
	}
	
	
		
	
}
