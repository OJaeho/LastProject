package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.service.qnaService;
import com.vo.QnaVO;

/**
 * Handles requests for the application home page.
 */
@Controller

public class qnaController {
	
	@Autowired
	private marketController con; 
	
	@Autowired
	private qnaService service;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	// 목록 조회 (이게 QnA 첫 페이지가 된다)
	@RequestMapping("/getQnAList.user")
	public String getQnApage(String pNum,Model model, HttpServletRequest request) {
		String pageNum = "1";
		if (pNum != null) {
			pageNum = pNum;
		}
		System.out.println(pageNum);
		model.addAttribute("getQnAList", service.getQnAList(pageNum));
		model.addAttribute("getId", request.getRemoteUser());//현재 로그인되어있는 id
		model.addAttribute("list", con.selectFooter()); //footer처리
		model.addAttribute("totalpNum", service.getTotalCount());// qna 총 페이지 수
		
		return "QnA/getQnAList";
	}

	// 글쓰기 페이지로 이동
	@RequestMapping(value="registQnA.checking")
	public String RegistQnA(HttpServletRequest request, Model model, QnaVO vo) {	
		model.addAttribute("getId", request.getRemoteUser());
		model.addAttribute("list", con.selectFooter());
			return "QnA/insertQnA";
	}

	// 게시물 등록
	@RequestMapping(value = "/insertQnA.user")
	public String insertQnA(QnaVO vo, Model model, HttpServletRequest request, HttpSession session) throws Exception{
		vo.setUserName(request.getRemoteUser()); //현재 로그인 중인 id vo에 저장
		vo.setMkId((int)session.getAttribute("mkId"));
		service.insertQnA(vo);		
		model.addAttribute("list", con.selectFooter());
		return "redirect:/getQnAList.user";
	}
	
    // 게시물 삭제
    @RequestMapping("/deleteQnA.user")
    public String deleteQnA(QnaVO vo, Model model, HttpServletRequest request) {
		if (request.getRemoteUser() == null)
		{
			return "redirect:/login/loginForm.do";
		}
    	service.deleteQnA(vo);    
    	System.out.println("=====삭제완료=====");    	
    	model.addAttribute("list", con.selectFooter());
    	return "redirect:/getQnAList.user";
    }
	

    // 게시물 상세 조회
    @RequestMapping("/getQnA.user")
    public String getQnA(QnaVO vo, Model model, HttpServletRequest request) {
    	QnaVO answer = service.getQnA(vo);
    	// 권한별 답변 등록 가능 기능 
    	model.addAttribute("Check",String.valueOf(request.isUserInRole("ROLE_MARKET"))); // 권한 일치 : true 권한 불일치: false
   		model.addAttribute("getQnA", answer ); // Model 정보 저장
   		if(request.getRemoteUser() != null) {
   		model.addAttribute("userMarket",service.selectUserMarket(request.getRemoteUser())); // 현재 로그인한 ID가 담당하는 시장
   		}
   		model.addAttribute("ID",(String)request.getRemoteUser());
   		model.addAttribute("list", con.selectFooter()); // footer select
       	return "QnA/getQnA";
    }
    
    //답변등록시 
    @RequestMapping(value="updateQA.market" , method = RequestMethod.GET)
    public String insertQA(QnaVO vo) {
    	service.updateQA(vo);
    	return "redirect:/getQnAList.user";
    }
 
    
	// 수정 페이지로 이동
//	@RequestMapping(value="updateRegistQnA.user")
//	public String updateRegistQnA(QnaVO vo, Model model) {
//		System.out.println(vo.getqTitle()+"아악");
//		model.addAttribute("getQnA", vo);
//		System.out.println("왜ㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐ");
//		return "QnA/updateQnA";
//	}
//    
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

