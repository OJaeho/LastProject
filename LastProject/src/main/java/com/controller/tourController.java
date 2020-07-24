package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.service.marketService;
import com.service.tourService;
import com.vo.PagingVO;
import com.vo.TourVO;

@Controller
public class tourController {
	
	private static final Logger logger = LoggerFactory.getLogger(marketController.class);
	@Autowired
	private marketService service;
	
	@Autowired
	private tourService tourservice;
	
	//투어 전체 리스트 , 페이징
	@RequestMapping("/tourHome.do")
	public void tourHome(PagingVO vo, Model model, HttpServletRequest request, 
			@RequestParam(value="nowPage", required = false)String nowPage,
			@RequestParam(value="cntPerPage", required=false)String cntPerPage) {
		//System.out.println("권한" + request.isUserInRole("ROLE_MARKET"));
		if(request.getRemoteUser()!=null) {
			model.addAttribute("authority", String.valueOf(request.isUserInRole("ROLE_MARKET")));
		}
		
		int total =  tourservice.countTourList();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		List<TourVO> list = tourservice.selectTourList(vo);
		model.addAttribute("paging", vo);
		model.addAttribute("tourlist", list);
	}
	
	//관광지 디테일 화면
	@RequestMapping("/tourDetail.do")
	public String tourDetail(TourVO vo, HttpServletRequest request, Model model) {
		int tid = Integer.parseInt(request.getParameter("tId"));
		vo.settId(tid);
		model.addAttribute("result", tourservice.tourDetail(vo));
		return "/tour-detail";
	}
	
	//신규 관광지 등록
	@ResponseBody
	@RequestMapping(value="/newTour.do", produces="application/json; charset=utf-8")
	public String InsertTour(TourVO vo, Model model){
		String result = String.valueOf(tourservice.InsertTour(vo));
		return result;
	}
	
	@RequestMapping("/deleteTour.do")
	public String deleteTour(String tId, String pno) {
		tourservice.deleteTour(tId);
		return "redirect:/tourHome.do?nowPage="+pno;
	}
}

