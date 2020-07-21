package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.service.qnaService;
import com.serviceImpl.qnaServiceImpl;
import com.vo.QnaVO;

/**
 * Handles requests for the application home page.
 */
@Controller

public class qnaController {
	
	
	@Autowired
	private qnaService service;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	// 문의사항 목록 조회 (이게 공지사항 첫 페이지가 된다)
	@RequestMapping("/getQnAList.user")
	public String getQnApage(Model model) {
		System.out.println("=====QnA출력======");
		model.addAttribute("getQnAList", service.getQnAList());
		return "QnA/getQnAList";
	}
	
//    @RequestMapping("/insertQnA.user")
//    public String insertQnA() throws Exception {    
//    	System.out.println("=====QnA작성출력======");
//       return "QnA/insertQnA";
//    }

	
	@RequestMapping(value="registQnA.user")
	public String RegistQnA() {
		
		return "QnA/insertQnA";
	}

	// 게시물 등록
	@RequestMapping(value = "/insertQnA.user")
	public String insertQnA(QnaVO vo) throws Exception{
		System.out.println(vo.getQaWriter()+": 작성자");
		System.out.println(vo.getqTitle()+": 제목");
		System.out.println(vo.getQlContent()+": 작성내용");

		qnaService.insertQnA(vo);		
		System.out.println("게시판미친놈아ㅡㅡ");
		return "QnA/getQnAList";
	}
	

//	// 공지 상세 조회
//	@RequestMapping("getNotice.user")
//	public void getNotice(NoticeVO vo, Model model) {
//		model.addAttribute("notice", noticeService.getNotice(vo));
//	}	
    
//	@RequestMapping("/{step}.do")
//	public String viewPage(@PathVariable String step) {
//		return "/notice/"+step;	
//	}
}
