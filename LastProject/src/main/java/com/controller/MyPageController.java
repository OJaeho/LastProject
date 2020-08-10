package com.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.daoImpl.mypageDaoImpl;
import com.service.mypageService;
import com.vo.MypageVO;
import com.vo.ReviewVO;
import com.vo.StoreVO;

@Controller
public class MyPageController {
   @Autowired
   private marketController con; // footer를 위해

   @Autowired
   private mypageService service;
   
   @Autowired
   mypageDaoImpl mypageDao;
   
   // 권한별 마이페이지 이동
   @RequestMapping("/mypage.checking")
   public String preMypage(HttpServletRequest request) {
      if (request.isUserInRole("ROLE_ADMIN")) {
         return "redirect:/Amypage.master";
      } else if (request.isUserInRole("ROLE_MARKET")) {
         return "redirect:/Mmypage.market";
      } else if (request.isUserInRole("ROLE_SELLER")) {
         return "redirect:/Smypage.seller";
      } else {
         return "redirect:/Umypage.user";
      }

   }
     
   

   // 시스템 관리자 마이페이지
   @RequestMapping("/Amypage.master")
   public String Amypage() {
      return "mypage/Amypage";
   }

   // 마켓 관리자 마이페이지
   @RequestMapping("/Mmypage.market")
   public String Mmypage() {
      return "mypage/Mmypage";
   }

   // 판매자 마이페이지
   @RequestMapping("/Smypage.seller")
   public String Smypage(HttpServletRequest request,Model model) {
      model.addAttribute("store", service.getStoreById(request.getRemoteUser()));
      System.out.println(service.getStoreById(request.getRemoteUser()).getsId()+"1차 확인");
      return "mypage/Smypage";
   }

   // user 마이페이지
   @RequestMapping("/Umypage.user")
   public String Umypage() {
      return "mypage/Umypage";
   }

   // 구매 목록 페이지
   @RequestMapping("/PayList.user")
   public String payList(MypageVO vo,HttpServletRequest request, Model model) {
      
      // 현재 로그인된 아이디의 구매목록 불러오기
      model.addAttribute("list", con.selectFooter()); // footer처리
      model.addAttribute("payStateView", vo.getPayState());
      model.addAttribute("startView",vo.getStart());
      model.addAttribute("endView",vo.getEnd());
      return "mypage/PayList";

   }
   //구매리스트 무한 스크롤
   @ResponseBody
   @RequestMapping("/payListInfinity.user")
   public JSONObject PayListInfinity(MypageVO vo,HttpServletRequest request) {
	   System.out.println(vo.getStart()+ ": 시작");
	   System.out.println(vo.getEnd()+": 종료");
	   // 현재 로그인 된 아이디
	  String id = request.getRemoteUser();
      return service.payList(id,vo);
   }

  
   // 리뷰 리스트
   @RequestMapping("/reviewList.user")
   public String reviewList(String pNum, HttpServletRequest request, Model model) {
      String pageNum = "1";
      if (pNum != null) {
         pageNum = pNum;
      }
      // 현재 로그인 된 아이디
      String id = request.getRemoteUser();
      HashMap map = new HashMap();
      map.put("table", "review"); // 내가 출력할 리스트 행갯수 출력을 위해 조건을 hashmap에 저장
      map.put("condition1", "username");
      map.put("value1", id);
      model.addAttribute("totalpNum", service.getTotalCount(map));// qna 총 페이지 수
      model.addAttribute("reviewget", service.reviewList(pageNum, id));
      model.addAttribute("list", con.selectFooter()); // footer처리
      return "mypage/ReviewList";
   }

   // 리뷰 삭제
   @RequestMapping("/deleteReview.user")
   public String deleteReview(ReviewVO rvo) {
      service.deleteReview(rvo);

      return "redirect:/reviewList.user";
   }

   // 차트 페이지로 이동
   @RequestMapping("/moveUChart.user")
   public String moveUChart(Model model) {
      model.addAttribute("list", con.selectFooter()); // footer처리
      return "mypage/Uchart";
   }

   // userFoodRank 
   @ResponseBody
   @RequestMapping("/userFoodRank.user")
   public JSONObject Food_Rang_list(HttpServletRequest request) {
      return service.userFoodRank(request.getRemoteUser());
   }

   // userMoneyChart json
   @ResponseBody
   @RequestMapping("/userMoneyChart.user")
   public JSONObject user_Money_chcart(HttpServletRequest request) throws Exception {
      return service.userMoneyChart(request.getRemoteUser());
   }
   
   //---------------------------------------------------------
   @RequestMapping("SellList.seller")
   public String SellList(String sId,HttpServletRequest request,Model model) {
	   //판매 목록 출력하기 <페이징 처리 함>
      String pageNum = "1";
      // 현재 로그인 된 아이디
      String id = request.getRemoteUser();
      HashMap m = new HashMap();
     //품절된 상품 목록
      model.addAttribute("cntZeroProduct",service.getCntZeroProduct(sId) );
      
      
    //판매중인 상품 목록
//      m.put("sId",sId);
//      m.put("condition","일단");
//      model.addAttribute("productList", service.productList(pageNum,m));
      //판매 중이지만 품절된 상품 목록
//      model.addAttribute("list", con.selectFooter()); // footer처리
      
      return "mypage/SellList";
   }
   //판매 상품 수정으로 이동
   @RequestMapping("MoveModifySell.seller")
   public String MoveModifySell(String pId,Model model) {
      model.addAttribute("product",mypageDao.getProductById(pId));
    //판매 중이지만 품절된 상품 목록
      model.addAttribute("list", con.selectFooter()); // footer처리
      
      
      return "modifyProduct";
   }
   //   판매 상품 수정
   @RequestMapping("ModifySell.seller")
   public String ModifySell(Model model) {
	 
	   //판매 중이지만 품절된 상품 목록
	      model.addAttribute("list", con.selectFooter()); // footer처리
      return "";
   }
   
//   판매 상품 수정
   @RequestMapping("DeleteSell.seller")
   public String DeleteSell(String pId,Model model,HttpServletRequest request) {
      mypageDao.deleteProduct(pId);
      
      model.addAttribute("list", con.selectFooter()); // footer처리
      
      
      //sId 구하기
      StoreVO imsivo= service.getStoreById(request.getRemoteUser());
      return "redirect:/SellList.seller?sId="+imsivo.getsId();
   }
   
   // 판매목록 리스트 가져오기
   @ResponseBody
   @RequestMapping("/productListJson.seller")
   public JSONObject getProductListTypeJson(String no,HttpServletRequest request) throws Exception {
      StoreVO imsivo= service.getStoreById(request.getRemoteUser());//sId 구하기
	   return service.getProductListTypeJson(String.valueOf(imsivo.getsId()),no);
   }

}