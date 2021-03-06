package com.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping(value = "/login/loginForm.user", method = RequestMethod.GET)
	public String loginFor(Locale locale, Model model,HttpSession session) {
//		logger.info("Welcome Login Form!");
		session.getAttribute("mkId");
		return "login/loginForm";
	}
	
	@RequestMapping(value = "/login/accessDenied.user", method = RequestMethod.GET)
	public String accessDenied(Locale locale, Model model) {
//		logger.info("Welcome Access Denied!");
		
		return "login/accessDenied";
	}
	
}
