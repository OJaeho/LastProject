package com.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.service.tourService;
import com.vo.TourVO;

@Controller
public class tourController {
	
	@Autowired
	private tourService service;
	
	//Åõ¾î È¨
	@RequestMapping("/tourHome.do")
	public String tourHome(TourVO vo, Model model) {
		List<TourVO> list = service.tourHome(vo);
		model.addAttribute("tourlist", list);
		return "/tour-home1";
	}
	 
	@ResponseBody
	@RequestMapping(value="/tourList.do", produces = "application/json; charset=utf-8")
	public List<TourVO> tourHome(TourVO vo, Model model, String num) {
		System.out.println(num);
		int su = Integer.parseInt(num);
		HashMap map = new HashMap();
		map.put("su", su);
		map.put("vo", vo);
		List<TourVO> result = service.tourList(map);
		System.out.println(result);
		return result;
	}
}
