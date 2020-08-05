package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.service.marketService;
import com.service.payService;
import com.vo.PayVO;

@Controller
public class payController {

	private static final Logger logger = LoggerFactory.getLogger(marketController.class);
	@Autowired
	private marketService service;

	@Autowired
	private payService payservice;
	
	@Autowired
	private marketController con;

	// 장바구니 창에서 결제하기 버튼 눌렀을때 (페이지 전환)
	@RequestMapping("/payment.user")
	public void payment(PayVO vo, @RequestParam List<Integer> boxValue, Model model) {
		model.addAttribute("list", con.selectFooter());
		List<PayVO> info = payservice.paySelect(boxValue);
		model.addAttribute("result", info);
		model.addAttribute("name", info.get(0).getUserName());
		model.addAttribute("addr", info.get(0).getPayAddr());
		model.addAttribute("tel", info.get(0).getPayTel());
		model.addAttribute("userPoint", info.get(0).getUserPoint());
		
		int total = 0;
		for (int i = 0; i < info.size(); i++) {
			total += info.get(i).getPayTotal();
		}
		model.addAttribute("pTotal", total);
	}

	// 결제창에서 결제 버튼 누를 때
	@RequestMapping("/payComplate.user")
	public String payComplate(PayVO vo,@RequestParam List<String> payState1,
			@RequestParam List<Integer> paypId1,
			@RequestParam List<Integer> payCount1,
			@RequestParam String payUserName1,
			@RequestParam String payUserTel1,
			@RequestParam String payUserAddr1,
			@RequestParam List<Integer> payTotal1,
			@RequestParam List<String> paystorename1,
			@RequestParam List<String> paytitle1,
			@RequestParam List<String> payPcontent,
			@RequestParam List<Integer> payBid,
			HttpServletRequest request
		) {
		String userId = request.getRemoteUser();	
		for(int i=0; i<paypId1.size(); i++) {
			vo.setpId(paypId1.get(i));
			vo.setPayState(payState1.get(i));
			vo.setPayCount(payCount1.get(i));
			vo.setPayStoreName(paystorename1.get(i));
			vo.setPayTitle(paytitle1.get(i));
			vo.setUserName(payUserName1);
			vo.setPayTel(payUserTel1);
			vo.setPayAddr(payUserAddr1);
			vo.setPayTotal(payTotal1.get(i));
			vo.setPayContent(payPcontent.get(i));
			vo.setbId(payBid.get(i));
			try {
				payservice.insertPay(vo, userId);
				System.out.println(i + "완료");
			} catch (Exception e) {
				System.out.println(e.toString());
			}
		}
		return "redirect:/getproduct.user";
	}
}
