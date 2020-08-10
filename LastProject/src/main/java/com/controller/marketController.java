package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.service.marketService;
import com.service.memberService;
import com.vo.IssueVO;
import com.vo.MarketVO;
import com.vo.NoticeVO;
import com.vo.QnaVO;
import com.vo.UsersVO;

@Controller
public class marketController {

	private static final Logger logger = LoggerFactory.getLogger(marketController.class);
	@Autowired
	private marketService service;
	@Autowired
	private memberService mService;
	

	// 0. 풋터에 셀렉트박스 조회할때 호출하는 함수 : 모든 화면 jsp에 적용할 필요있음
	// 호출할때는 model.addAttribute("list", selectFooter()); 이부분 넣어주고 인자에 Model model 삽입
	public List<MarketVO> selectFooter() {
		List<MarketVO> list = service.selectMarket();
		return list;
	}

	// 1. 메인메뉴 전국시장지도 보여주는 호출하는 함수
	@RequestMapping("/folliumtest.user")
	public String folliumtest(Model model) {
		List<MarketVO> list = service.selectMarket();
		System.out.println(list.get(0) + "+++++++++++++++++++++++++++");
		model.addAttribute("list", list);
		return "folliumtest";

	}
	@RequestMapping("logincheck.checking")
	public String logincheck(HttpSession session) {
		//mkId 세션에서 가져와서 파라미터로 넘김
		int mkId=(int)session.getAttribute("mkId");
		return "redirect:/index2.user?mkId="+mkId;
	}

	// 1_1. 메인메뉴에서 망원시장 선택할 경우, 시장메인화면으로 옮겨가기 : index로 갈무리 셋팅해놓음(수정필요)
	@RequestMapping("/index2.user")
	public String marketHome(@ModelAttribute MarketVO vo, HttpSession session, Model model,NoticeVO nvo,IssueVO ivo,QnaVO qvo) {
		// 풋터 '전국시장' 셀렉트함수 호출
		model.addAttribute("list", selectFooter());
		//세션에 mkId 저장
		session.setAttribute("mkId", vo.getMkId());
		int mkId=(int)session.getAttribute("mkId");
		nvo.setMkId(mkId);
		ivo.setMkId(mkId);
		qvo.setMkId(mkId);
		List<NoticeVO> notice = service.selectnotice(nvo);
		List<IssueVO> issue = service.selectissue(ivo);
		List<QnaVO> qna = service.selectqna(qvo);
		model.addAttribute("noticeget", notice);
		model.addAttribute("issueget", issue);
		model.addAttribute("qnaget", qna);

		return "index";
	}

	// 2_1. 시장소개 메뉴_DB에서 시장정보 가져오기
	@RequestMapping("/introMarket.user")
	public String introMarket(Model model, HttpSession session, @ModelAttribute MarketVO vo) {
		try {
			// 풋터 '전국시장' 셀렉트함수 호출
			model.addAttribute("list", selectFooter());

			// 시장의 key값을 세션에서 가져옴
			int mkid = (int) session.getAttribute("mkId");
			vo.setMkId(mkid);
			System.out.println(vo.getMkId() + "+++++++++++++++++++++++");

			// 시장소개 메뉴_DB에서 시장정보 가져옴
			MarketVO vo1 = service.introMarket(vo);

			// 가지고 온 날짜를 yyyy-MM-dd 형태로 자름
			vo1.setMkDate(vo1.getMkDate().substring(0, 11));
			model.addAttribute("intro", vo1);

		} catch (NumberFormatException e) {

		}
		return "market/introMarket";
	}

	// 3_1. 시장오시는길 메뉴_DB에서 시장정보 가져오기
	@RequestMapping("/waytoMarket.user")
	public String waytoMarket(Model model, HttpSession session, @ModelAttribute MarketVO vo) {
		try {
			// 풋터 '전국시장' 셀렉트함수 호출
			model.addAttribute("list", selectFooter());

			// 시장소개 메뉴_DB에서 시장정보 가져올때, 시장의 key값을 세션에서 가져와서 저장
			int mkid = (int) session.getAttribute("mkId");
			vo.setMkId(mkid);
			
			//intro 모델단에 정보 넘김
			MarketVO vo1 = service.introMarket(vo);
			model.addAttribute("intro", vo1);

		} catch (NumberFormatException e) {

		}
		return "market/waytoMarket";
	}

	// 4_1. 시장이슈_DB에서 이슈정보 가져오기
	@RequestMapping(value = "/marketIssue.user", method = RequestMethod.GET)
	public String marketIssue(@ModelAttribute IssueVO vo, String pNum, HttpServletRequest request, HttpSession session, Model model) {
		try {
			String pageNum = "1";
			if (pNum != null) {
				pageNum = pNum;
			}
			// 풋터 '전국시장' 셀렉트함수 호출
			model.addAttribute("list", selectFooter());

			// 시장이슈 메뉴_DB에서 시장정보 가져올때, 시장의 key값을 세션에서 가져옴
			int mkid = (int) session.getAttribute("mkId");
			vo.setMkId(mkid);

			// 시장 이슈, vo에서 리스트형태로 담아와 issue에서 저장
			List<IssueVO> issue = service.marketIssue(vo, pageNum);

			// 가지고 온 날짜를 yyyy-MM-dd 형태로 자름
			for (int i = 0; i < issue.size(); i++) {
				issue.get(i).setIsDate(issue.get(i).getIsDate().substring(0, 11));
			}
			// 모델단에 issue 리스트랑 리스트정보 넘김
			model.addAttribute("issue", issue);
			model.addAttribute("totalpNum", service.getTotalCount(vo));

			if(request.getRemoteUser()!=null) {
				model.addAttribute("authority", String.valueOf(request.isUserInRole("ROLE_MARKET")));
			}
	
		} catch (NumberFormatException e) {
		}
		return "market/marketIssue";
	}
	
	// 4_2. 시장이슈 등록버튼 클릭 시 화면 이동
	@RequestMapping(value = "/insertIssue.market", method = RequestMethod.GET)
	public String insertIssue(Model model) {	
		// 풋터 '전국시장' 셀렉트함수 호출
		model.addAttribute("list", selectFooter());
		
		return "market/insertIssue";
		}
	
	// 4_3. 등록버튼 클릭 시 이슈DB에 인서트 
	@RequestMapping(value = "/saveIssue.market", method = RequestMethod.GET) 
	public String saveIssue(IssueVO vo, HttpServletRequest request, HttpSession session, Model model) {
		// 풋터 '전국시장' 셀렉트함수 호출
		model.addAttribute("list", selectFooter());
		
		// 리퀘스트의 유저네임 정보 가져와서 vo에 담음
		vo.setUserName( (String) request.getRemoteUser());
		
		// 시장이슈 메뉴_DB에서 시장정보 가져올때, 시장의 key값을 세션에서 가져옴
		vo.setMkId((int) session.getAttribute("mkId"));
		
		int result = service.saveIssue(vo);	
		
		String message = "이슈등록에 실패하였습니다.";
		if(result==1) message="이슈등록을 완료하였습니다.";
		
		model.addAttribute("message",message);
		
		return "redirect:/marketIssue.user";
	}
	
	// 4_4. 시장이슈 삭제버튼 클릭 시 이슈삭제 
	@RequestMapping(value = "/deleteIssue.market", method = RequestMethod.GET) 
	public String deleteIssue(String isId, IssueVO vo, HttpServletRequest request, HttpSession session, Model model) {
		// 풋터 '전국시장' 셀렉트함수 호출
		model.addAttribute("list", selectFooter());
		
		// 화면에서 넘겨받은 isId를 vo에 담음
		vo.setIsId(Integer.parseInt(isId));
	
		// 리퀘스트의 유저네임 정보 가져와서 vo에 담음
		vo.setUserName((String) request.getRemoteUser());
		
		// 시장이슈 메뉴_DB에서 시장정보 가져올때, 시장의 key값을 세션에서 가져옴
		vo.setMkId((int) session.getAttribute("mkId"));
		
		int result = service.deleteIssue(vo);
		
		String message = "이슈삭제에 실패하였습니다.";
		if(result==1) message="이슈삭제를 완료하였습니다.";
		
		model.addAttribute("message",message);
		return "redirect:/marketIssue.user";
	}
	
	// 5_1. 시장 등록 버튼 클릭 시 등록 화면으로 이동
	@RequestMapping(value = "/insertMarket.master", method = RequestMethod.GET) 
	public String insertMarket(Model model) {
		
		// 풋터 '전국시장' 셀렉트함수 호출
		model.addAttribute("list", selectFooter());	
		
		return "market/insertMarket";
		}
	
	
	// 5_2. 시장 등록 버튼 클릭 시 DB에 인서트
	@RequestMapping(value="/saveMarket.master", method = RequestMethod.GET)
	public String saveMarket(MarketVO mvo,UsersVO uvo, HttpServletRequest request, HttpSession session, Model model) {
		
		// 풋터 '전국시장' 셀렉트함수 호출
		model.addAttribute("list", selectFooter());
		
		// 각 시장과 회원 주소 정보를 합치기
		uvo.getmAddr();
		mvo.getMkAddr();
		
		// 유저와 시장 테이블에 각 입력한 정보 인서트 
		mService.insertMember(uvo);
		int result=service.insertMarket(mvo);
		
		String message = "시장등록에 실패하였습니다.";
		if(result==1) message="시장등록을 완료하였습니다.";
		
		model.addAttribute("message",message);
			
		return "redirect:/folliumtest.user";
		}
		


	// 5_2. 마켓관리자  등록 시 아이디 중복체크 
	@ResponseBody//(****************비동기통신을 해주세요) AJAX통신을 하는애는 반드시 이 어노테이션이 있어야함 
	@RequestMapping(value = "/idCheck2.user", produces="application/test; charset=UTF-8")
	public String idcheck2(UsersVO vo) {
			UsersVO result = mService.idCheck_Login(vo);
			String message = "중복된 아이디입니다";
			if(result==null) message="사용가능한 아이디입니다";
			
			return message;
		} 

	// 5_3. 마켓관리자  등록 시 비밀번호 중복체크 	
	@ResponseBody//(****************비동기통신을 해주세요) AJAX통신을 하는애는 반드시 이 어노테이션이 있어야함 
	@RequestMapping(value = "/telCheck2.user", produces="application/test; charset=UTF-8")
	public String telcheck2(UsersVO vo) {
			UsersVO result = mService.telCheck_Login(vo);
			String message = "중복된 전화번호입니다";
			if(result==null) message="사용가능한 전화번호입니다";
			 
			return message;
		} 
	
		
	// 5_4. 마이페이지에서 시장정보조회 버튼 클릭 시 화면에 정보 조회
	@RequestMapping(value = "/marketDetail.master", method = RequestMethod.GET)
	public String marketDetail(MarketVO vo, HttpServletRequest request, HttpSession session, Model model) {	
		// 풋터 '전국시장' 셀렉트함수 호출
		model.addAttribute("list", selectFooter());

		// 시장의 key값을 세션에서 가져옴
		int mkId = (int) session.getAttribute("mkId");
		vo.setMkId(mkId);
					
		// 시장소개 메뉴_DB에서 시장정보 가져옴
		MarketVO vo1 = service.introMarket(vo);
							
		// 날짜형태를 yyyy-MM-dd 형태로 자름
		vo1.setMkDate(vo1.getMkDate().substring(0, 11));
								
		model.addAttribute("market", vo1);
					
		return  "market/marketDetail";
	}	
	
	// 5_5. 시장페이지에서 정보 수정 버튼 클릭 시 화면에 정보 수정
	@RequestMapping(value = "/updateMarket.master", method = RequestMethod.GET)
	public String updateMarket(MarketVO vo, HttpServletRequest request, HttpSession session, Model model) {	
			// 풋터 '전국시장' 셀렉트함수 호출
			model.addAttribute("list", selectFooter());
					
			// 시장소개 메뉴_DB에서 시장정보 업데이트
			int result=service.updateMarket(vo);
			
			String message = "정보수정에 실패하였습니다.";
			if(result==1) message="정보수정을 완료하였습니다.";
			
			model.addAttribute("message",message);
					
			return  "redirect:/marketDetail.master";
		}
	
	// 5_6. 시장페이지에서 삭제 버튼 클릭 시 화면에 정보 수정
	@RequestMapping(value = "/deleteMarket.master", method = RequestMethod.GET)
	public String deleteMarket(MarketVO vo, HttpServletRequest request, HttpSession session, Model model) {	
			// 풋터 '전국시장' 셀렉트함수 호출
			model.addAttribute("list", selectFooter());
						
			// 시장소개 메뉴_DB에서 시장정보 업데이트
			int result=service.deleteMarket(vo);
			
			String message = "시장삭제에 실패하였습니다.";
			if(result==1) message="시장삭제를 완료하였습니다.";
			
			model.addAttribute("message",message);
			
			// 시장정보가 삭제되면 초기메인으로 돌아감			
			return  "redirect:/folliumtest.user";
			}
			
		
		
}
