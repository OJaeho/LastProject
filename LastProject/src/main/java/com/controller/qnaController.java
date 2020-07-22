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

	// 글쓰기 페이지로 이동
	@RequestMapping(value="registQnA.user")
	public String RegistQnA() {		
		return "QnA/insertQnA";
	}

	// 게시물 등록
	@RequestMapping(value = "/insertQnA.user")
	public String insertQnA(QnaVO vo) throws Exception{
		System.out.println(vo.getqWriter()+": 작성자");
		System.out.println(vo.getqTitle()+": 제목");
		System.out.println(vo.getQlContent()+": 작성내용");
		service.insertQnA(vo);		
		System.out.println("=====글쓰기 성공=====");
		return "redirect:/getQnAList.user";
	}
	
    // 게시물 삭제
    @RequestMapping("/deleteQnA.user")
    public String deleteQnA(QnaVO vo) {
    	service.deleteQnA(vo);    
    	System.out.println("=====삭제완료=====");
    	return "redirect:/getQnAList.user";
    }
	

    // 게시물 상세 조회
    @RequestMapping("/getQnA.user")
    public String getQnA(QnaVO vo, Model model) {
       model.addAttribute("getQnA", service.getQnA(vo)); // Model 정보 저장 
       	System.out.println("=====조회성공=====");
       	return "QnA/getQnA";
    }
    
	// 수정 페이지로 이동
	@RequestMapping(value="updateRegistQnA.user")
	public String updateRegistQnA(QnaVO vo, Model model) {
		System.out.println(vo.getqTitle()+"아악");
		model.addAttribute("getQnA", vo);
		System.out.println("왜ㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐ");
		return "QnA/updateQnA";
	}
    
    // 게시물 수정
//    @RequestMapping("/updateQnA.user")
//    public String updateQnA(QnaVO vo)  {
//       service.updateQnA(vo); 
//       return "QnA/updateQnA";
//    }
    
//@RequestMapping("/insertQnA.user")
//public String insertQnA() throws Exception {    
//	System.out.println("=====QnA작성출력======");
// return "QnA/insertQnA";
//}
	
}

