package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {


	@RequestMapping("/{step}.user")
	public String page(@PathVariable String step) {
		return "member/"+step;
	
	}
	
	//회원 가입 버튼 눌렀을 때
	public String userRegist() {
		
		
		return "";
	}
}
