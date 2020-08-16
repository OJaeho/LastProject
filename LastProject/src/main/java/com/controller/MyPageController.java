package com.controller;

import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.daoImpl.mypageDaoImpl;
import com.service.mypageService;
import com.vo.MarketVO;
import com.vo.MypageVO;
import com.vo.PayVO;
import com.vo.ProductVO;
import com.vo.ReviewVO;
import com.vo.StoreVO;
import com.vo.UsersVO;

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
   public String Amypage(Model model) {
      model.addAttribute("list", con.selectFooter()); // footer처리
      return "mypage/Amypage";
   }

   // 마켓 관리자 마이페이지
   @RequestMapping("/Mmypage.market")
   public String Mmypage(Model model, HttpServletRequest request, HttpSession session) {
      // 로그인한 시장 id의 시장 정보 가져오기
      String mkName = service.getMarketById(String.valueOf(request.getRemoteUser())).getMkName();
      model.addAttribute("mkName", mkName);
      model.addAttribute("list", con.selectFooter()); // footer처리

      return "mypage/Mmypage";
   }

   // 판매자 마이페이지
   @RequestMapping("/Smypage.seller")
   public String Smypage(HttpServletRequest request, Model model) {
      model.addAttribute("store", service.getStoreById(request.getRemoteUser()));
      model.addAttribute("list", con.selectFooter()); // footer처리

      return "mypage/Smypage";
   }

   // user 마이페이지
   @RequestMapping("/Umypage.user")
   public String Umypage(Model model) {
      model.addAttribute("list", con.selectFooter()); // footer처리

      return "mypage/Umypage";
   }

   // 구매 목록 페이지
   @RequestMapping("/PayList.user")
   public String payList(MypageVO vo, HttpServletRequest request, Model model) {

      // 현재 로그인된 아이디의 구매목록 불러오기
      model.addAttribute("list", con.selectFooter()); // footer처리
      model.addAttribute("payStateView", vo.getPayState());
      model.addAttribute("startView", vo.getStart());
      model.addAttribute("endView", vo.getEnd());
      return "mypage/PayList";

   }

   // 구매리스트 무한 스크롤
   @ResponseBody
   @RequestMapping("/payListInfinity.user")
   public JSONObject PayListInfinity(MypageVO vo, HttpServletRequest request) {
      // 현재 로그인 된 아이디
      String id = request.getRemoteUser();
      return service.payList(id, vo);
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

   // ---------------------------------------------------------
   @RequestMapping("ProductList.seller")
   public String SellList(String sId, HttpServletRequest request, Model model) {
      // 판매 목록 출력하기 <페이징 처리 함>
      String pageNum = "1";
      // 현재 로그인 된 아이디
      String id = request.getRemoteUser();
      HashMap m = new HashMap();
      // 품절된 상품 목록
      model.addAttribute("cntZeroProduct", service.getCntZeroProduct(sId));
      model.addAttribute("list", con.selectFooter()); // footer처리

      return "mypage/SellList";
   }

   // 판매 상품 수정으로 이동
   @RequestMapping("MoveModifySell.seller")
   public String MoveModifySell(String pId, Model model) {
      model.addAttribute("list", con.selectFooter()); // footer처리
      model.addAttribute("product", service.getProductById(pId));
      // 판매 중이지만 품절된 상품 목록
      return "mypage/modifyProduct";
   }

   // 상품 정보 수정 >> 수정버튼
   @RequestMapping("/updataProduct.seller")
   public String updatePro(ProductVO vo) {
      service.updatePro(vo);
      return "redirect:/ProductList.seller?sId=" + vo.getsId();
   }

   // 판매 상품 수정
   @RequestMapping("ModifySell.seller")
   public String ModifySell(Model model) {

      // 판매 중이지만 품절된 상품 목록
      model.addAttribute("list", con.selectFooter()); // footer처리
      return "";
   }

//   판매 상품 삭제
   @RequestMapping("DeleteSell.seller")
   public String DeleteSell(String pId, Model model, HttpServletRequest request) {
      mypageDao.deleteProduct(pId);
      StoreVO svo = service.getStoreById(request.getRemoteUser());
      return "redirect:/ProductList.seller?sId=" + svo.getsId();
   }

   // 판매목록 리스트 가져오기
   @ResponseBody
   @RequestMapping("/productListJson.seller")
   public JSONObject getProductListTypeJson(String no, HttpServletRequest request) throws Exception {
      StoreVO imsivo = service.getStoreById(request.getRemoteUser());// sId 구하기
      return service.getProductListTypeJson(String.valueOf(imsivo.getsId()), no);
   }

   // 판매내역 페이지로 이동
   @RequestMapping("/moveSaleList.seller")
   public String moveSaleList(HttpServletRequest request, Model model) {
      StoreVO imsivo = service.getStoreById(request.getRemoteUser());
      // 준비중인 판매내역 가져오기
      model.addAttribute("RecentOrderList", service.getRecentOrderList(String.valueOf(imsivo.getsId())));

      model.addAttribute("list", con.selectFooter()); // footer처리
      model.addAttribute("sId", imsivo.getsId());// sid 보내기
      return "mypage/SaleList";
   }

// 판매중 외의 내역 가져오기 무한
   @ResponseBody
   @RequestMapping("/saleListJson.seller")
   public JSONObject getSaleListTypeJson(String no, HttpServletRequest request) throws Exception {
      StoreVO imsivo = service.getStoreById(request.getRemoteUser());// sId 구하기
      return service.getSaleListTypeJson(String.valueOf(imsivo.getsId()), no);
   }

   // 판매중 -> 판매완료
   @ResponseBody
   @RequestMapping("/ReadyOrder.seller")
   public String readyOrder(PayVO vo) {
      service.readyOrder(vo);
      String stat = vo.getPayState();
      if(stat.equals("픽업")) {
         // -----------------------------------------------------------------
         // 안드로이드 푸쉬 알림(판매자 ->> 고객)
         String userDeviceIdKey = "cqyyzyfuqpc:APA91bGoGuyEKMnztrq2zsmME9AQPuP8reEkppg8OJ_gLkNlLBl7Njxqx7HV6N0uUA7HzdYMG5hhLNDjQSmf1uSGQv2sYWoq7JXvFGv2suce4bXn8MxTd6WD-N3J9QGrmK0vFBbBzNWz";
         // Method to send Notifications from server to client end.
         // firebase.google.com 사이트에서 해당 프로젝트 > 설정 > 클라우드 메세지 > 서버 키 토큰 복사
         String AUTH_KEY_FCM = "AAAAn_Ld4PU:APA91bGOLQf8Ed2vLQwoGTJoCDEy9jCqfoZkypxqoxCzBwD_lM7rJk1JIVbrTbCBQJxXygSGcHtRmND5-M5J7cjxlC_Q5yj52VE8smC9WvcyVuj51ag-OyJM5KPVONvODYOKJPxnbsbc";
         String API_URL_FCM = "https://fcm.googleapis.com/fcm/send";

         String authKey = AUTH_KEY_FCM; // You FCM AUTH key
         String FMCurl = API_URL_FCM;
         try {
            URL url = new URL(FMCurl);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setUseCaches(false);
            conn.setDoInput(true);
            conn.setDoOutput(true);

            conn.setRequestMethod("POST");
            conn.setRequestProperty("Authorization", "key=" + authKey);
            conn.setRequestProperty("Content-Type", "application/json");

            JSONObject json = new JSONObject();
            json.put("to", userDeviceIdKey.trim());
            JSONObject info = new JSONObject();
            info.put("title", "주문안내"); // Notification title
            info.put("body", "주문하신 상품이 포장 완료 되었습니다"); // Notification body
            json.put("notification", info);

            OutputStreamWriter wr = new OutputStreamWriter(conn.getOutputStream());
            System.out.println(">" + json.toString());
            wr.write(json.toString());
            wr.flush();
            conn.getInputStream();
         } catch (Exception e) {
            System.out.println(e.toString() + "안드로이드오류래요");
         }
         // ----------------------------------------------------------------------------
      }else {
         // -----------------------------------------------------------------
                  // 안드로이드 푸쉬 알림(판매자 ->> 고객)
                  String userDeviceIdKey = "cqyyzyfuqpc:APA91bGoGuyEKMnztrq2zsmME9AQPuP8reEkppg8OJ_gLkNlLBl7Njxqx7HV6N0uUA7HzdYMG5hhLNDjQSmf1uSGQv2sYWoq7JXvFGv2suce4bXn8MxTd6WD-N3J9QGrmK0vFBbBzNWz";
                  // Method to send Notifications from server to client end.
                  // firebase.google.com 사이트에서 해당 프로젝트 > 설정 > 클라우드 메세지 > 서버 키 토큰 복사
                  String AUTH_KEY_FCM = "AAAAn_Ld4PU:APA91bGOLQf8Ed2vLQwoGTJoCDEy9jCqfoZkypxqoxCzBwD_lM7rJk1JIVbrTbCBQJxXygSGcHtRmND5-M5J7cjxlC_Q5yj52VE8smC9WvcyVuj51ag-OyJM5KPVONvODYOKJPxnbsbc";
                  String API_URL_FCM = "https://fcm.googleapis.com/fcm/send";

                  String authKey = AUTH_KEY_FCM; // You FCM AUTH key
                  String FMCurl = API_URL_FCM;
                  try {
                     URL url = new URL(FMCurl);
                     HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                     conn.setUseCaches(false);
                     conn.setDoInput(true);
                     conn.setDoOutput(true);

                     conn.setRequestMethod("POST");
                     conn.setRequestProperty("Authorization", "key=" + authKey);
                     conn.setRequestProperty("Content-Type", "application/json");

                     JSONObject json = new JSONObject();
                     json.put("to", userDeviceIdKey.trim());
                     JSONObject info = new JSONObject();
                     info.put("title", "주문안내"); // Notification title
                     info.put("body", "주문하신 상품이 배송 출발하였습니다!"); // Notification body
                     json.put("notification", info);

                     OutputStreamWriter wr = new OutputStreamWriter(conn.getOutputStream());
                     System.out.println(">" + json.toString());
                     wr.write(json.toString());
                     wr.flush();
                     conn.getInputStream();
                  } catch (Exception e) {
                     System.out.println(e.toString() + "안드로이드오류래요");
                  }
                  // ----------------------------------------------------------------------------
      }
      
      return "주문 준비가 완료되었습니다";
   }

   // Move marketList
   @RequestMapping("/moveStoreList.market")
   public String moveStoreList(Model model, HttpServletRequest request) {
      // username이 담당하는 시장 id 구하기
      String mkName = service.getMarketById(String.valueOf(request.getRemoteUser())).getMkName();

      model.addAttribute("mkName", mkName);
      return "mypage/StoreList";
   }

   // StoreList 출력
   @ResponseBody
   @RequestMapping("/storeListJson.market")
   public JSONObject getStoreListJson(String no, HttpServletRequest request) throws Exception {
      MarketVO imsivo = service.getMarketById(String.valueOf(request.getRemoteUser()));// mkId 구하기
      return service.getStoreListJson(String.valueOf(imsivo.getMkId()), no);
   }

   // market mypage management로 이동
   @RequestMapping("/moveManagement.market")
   public String moveManagement() {

      return "mypage/Management";
   }

   // Store Profile로 이동
   @RequestMapping("/moveStoreProfile.seller")
   public String moveStoreProfile(Model model, HttpServletRequest request) {
      // 아이디로 상점 정보랑 회원정보 가져오기
      model.addAttribute("store", service.getStoreMemberbyId(request.getRemoteUser()));

      return "mypage/StoreProfile";
   }

   @RequestMapping("/sellerProfileUpdate.seller")
   public String sellerProfileUpdate(StoreVO svo, UsersVO uvo, HttpServletRequest request) {
      svo.setUserName(request.getRemoteUser());
      uvo.setUserName(request.getRemoteUser());

      // 업데이트 호출
      service.sellerProfileUpdate(svo, uvo);

      return "redirect:/moveStoreProfile.seller";
   }

}