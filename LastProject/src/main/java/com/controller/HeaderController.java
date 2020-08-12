package com.controller;

import java.util.Locale;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HeaderController {
	private static final Logger logger = LoggerFactory.getLogger(HeaderController.class);
	@Autowired
	SessionLocaleResolver localeResolver;
	@Autowired
	MessageSource messageSource;
	
	// 헤더,풋터,폴리움 번역본
	@RequestMapping(value = "/i18n.do", method = RequestMethod.GET)
	public String i18n(Locale locale, HttpServletRequest request, Model model, HttpSession session) {
		// RequestMapingHandler로 부터 받은 Locale 객체를 출력해 봅니다.
		logger.info("Welcome i18n! The client locale is {}.", locale);
		// localeResolver 로부터 Locale 을 출력해 봅니다.
		logger.info("Session locale is {}.", localeResolver.resolveLocale(request));
		logger.info("header.ment : {}", messageSource.getMessage("header.ment", null, "default text", locale));
		// logger.info("not.exist 기본값 없음 : {}", messageSource.getMessage("not.exist",
		// null, locale));
		// JSP 페이지에서 EL 을 사용해서 arguments 를 넣을 수 있도록 값을 보낸다.
		model.addAttribute("header", messageSource.getMessage("header.ment", null, locale));

		String mkId = String.valueOf(session.getAttribute("mkId"));

		return "redirect:/index2.user?mkId=" + mkId;

	}
	
	//로그인폼 번역본
	@RequestMapping(value = "/i17n.do", method = RequestMethod.GET)
	public String i17n(Locale locale, HttpServletRequest request, Model model, HttpSession session) {
		model.addAttribute("header", messageSource.getMessage("header.ment", null, locale));

		String mkId = String.valueOf(session.getAttribute("mkId"));

		return "redirect:/login/loginForm.user?mkId=" + mkId;
	}
	
	//회원가입페이지 번역본
		@RequestMapping(value = "/i16n.do", method = RequestMethod.GET)
		public String i16n(Locale locale, HttpServletRequest request, Model model, HttpSession session) {
			// RequestMapingHandler로 부터 받은 Locale 객체를 출력해 봅니다.
			logger.info("Welcome i18n! The client locale is {}.", locale);
			// localeResolver 로부터 Locale 을 출력해 봅니다.
			logger.info("Session locale is {}.", localeResolver.resolveLocale(request));
			logger.info("header.ment : {}", messageSource.getMessage("header.ment", null, "default text", locale));
			// logger.info("not.exist 기본값 없음 : {}", messageSource.getMessage("not.exist",
			// null, locale));
			// JSP 페이지에서 EL 을 사용해서 arguments 를 넣을 수 있도록 값을 보낸다.
			model.addAttribute("header", messageSource.getMessage("header.ment", null, locale));

			String mkId = String.valueOf(session.getAttribute("mkId"));

			return "redirect:/memberRegist.user?mkId=" + mkId;
		}
}
