package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.noticeService;
import com.vo.NoticeVO;

/**
 * Handles requests for the application home page.
 */
@Controller

public class noticeController {
	
	
	@Autowired
	private noticeService service;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	// 공지 목록 조회 (이게 공지사항 첫 페이지가 된다)
	@RequestMapping("/getNoticeList.user")
	public String getNoticepage(Model model) {
		System.out.println("======공지목록출력======");
		model.addAttribute("getNoticeList", service.getNoticeList());
		return "notice/getNoticeList";
	}
	
    @RequestMapping("/insertNotice.user")
    public String insertNotice() throws Exception {    
    	System.out.println("======글쓰기출력======");
       return "notice/InsertNotice";
    }

	


//	// 공지 등록
//	@RequestMapping("/saveNotice.user")
//	public String insertNotice(NoticeVO vo, HttpSession session) throws Exception{
//		String userName = (String) session.getAttribute("userName");
//		vo.setuserName(userName);
//		noticeService.insertNotice(vo);
//		return userName;				
//	}
	

	
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
