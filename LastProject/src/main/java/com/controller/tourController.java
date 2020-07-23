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
//	//신규 관광지 등록
//	@RequestMapping("/newTour.do")
//	public String InsertTour(TourVO vo) {
//		int result = tourservice.InsertTour(vo);
//		if(result != 0) {		
//		}
//		return "redirect:/insertTour";
//	}
}

