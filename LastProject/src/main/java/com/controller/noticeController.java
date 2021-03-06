package com.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;
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
	private marketController con; 
	@Autowired
	private noticeService service;
	
	// 공지 목록 조회 (이게 공지사항 첫 페이지가 된다)
	@RequestMapping("/getNoticeList.user")
	public String getNoticepage(String pNum,Model model,HttpSession session) {
		String pageNum = "1";
		if (pNum != null) {
			pageNum = pNum;
		}
		int mkId=(int)session.getAttribute("mkId");
		model.addAttribute("getNoticeList", service.getNoticeList(pageNum,mkId));
		model.addAttribute("totalpNum", service.getTotalCount(mkId));// qna 총 페이지 수
		model.addAttribute("list", con.selectFooter());
		return "notice/getNoticeList";
	}
	
	//공지 등록화면으로 이동
    @RequestMapping("/insertNotice.market")
    public String insertNotice() throws Exception {
       return "notice/InsertNotice";
    }
    
    //공지 등록하기
    @RequestMapping("/registNotice.user")
    public String registNotice(NoticeVO vo, HttpServletRequest request,HttpSession session) {
    	try {
			request.setCharacterEncoding("UTF-8");
			String ntitle = URLDecoder.decode(vo.getnTitle(), "UTF-8"); 
			String ncotent= URLDecoder.decode(vo.getnContent(), "UTF-8");
			vo.setuserName(request.getRemoteUser()); //로그인한 아이디값 저장
			vo.setMkId((int)session.getAttribute("mkId"));
			service.insertNotice(vo);
			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

    	return "redirect:/getNoticeList.user";
    }
    
    //공지사항 상세히 가져오기
    @RequestMapping("/getNotice.user")
    public String getNotice(NoticeVO vo,Model model) {
    	model.addAttribute("notice", service.getNotice(vo));
    	model.addAttribute("list", con.selectFooter());
    	return "notice/getNotice";
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
