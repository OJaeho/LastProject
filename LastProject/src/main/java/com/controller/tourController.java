package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.service.tourService;
import com.vo.PagingVO;
import com.vo.TourVO;

@Controller
public class tourController {
	
	@Autowired
	private tourService tourservice;
	
	//투어 전체 리스트 , 페이징
	@RequestMapping("/tourHome.do")
	public void tourHome(PagingVO vo, Model model, 
			@RequestParam(value="nowPage", required = false)String nowPage,
			@RequestParam(value="cntPerPage", required=false)String cntPerPage) {
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
//	@ResponseBody
//	@RequestMapping(value="/tourList.do", produces = "application/json; charset=utf-8")
//	public void tourHome(TourVO vo, Model model, String num) {
//		System.out.println(num);
//		int su = Integer.parseInt(num);
//		HashMap map = new HashMap();
//		map.put("su", su);
//		map.put("vo", vo);
//		List<TourVO> tourList = tourservice.tourList(map);
//		//ModelAndView mv = new ModelAndView();
//		model.addAttribute("tourList", tourList);
//		HashMap result = new HashMap();
//		result.put("tourList", tourList);
//		System.out.println(result);
	}

