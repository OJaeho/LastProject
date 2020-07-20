package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping(value="/index.user")
	public String marketHome(HttpSession session) {
		session.setAttribute("mkId", "1009");
		System.out.println("세션저장 성공");
		return "index";
	}

}
