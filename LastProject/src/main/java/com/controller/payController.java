package com.controller;

import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
   public void payment(PayVO vo, @RequestParam List<Integer> boxValue, Model model)
 {
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
         HttpServletRequest request,RedirectAttributes redirectAttributes,
         HttpSession session
      ) {
         
      String userId = request.getRemoteUser();   
      int groupId=payservice.getGroupId();
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
            payservice.insertPay(vo, userId,groupId);
            redirectAttributes.addAttribute("GroupId", groupId);
            System.out.println(i + "완료");
         } catch (Exception e) {
            System.out.println(e.toString());
         }
      }
      //--------------------------------------------------------------------------------------------
            String userDeviceIdKey = "cqyyzyfuqpc:APA91bGoGuyEKMnztrq2zsmME9AQPuP8reEkppg8OJ_gLkNlLBl7Njxqx7HV6N0uUA7HzdYMG5hhLNDjQSmf1uSGQv2sYWoq7JXvFGv2suce4bXn8MxTd6WD-N3J9QGrmK0vFBbBzNWz";
             
             //Method to send Notifications from server to client end.
             // firebase.google.com 사이트에서 해당 프로젝트 > 설정 > 클라우드 메세지 > 서버 키 토큰 복사
            String AUTH_KEY_FCM = "AAAAn_Ld4PU:APA91bGOLQf8Ed2vLQwoGTJoCDEy9jCqfoZkypxqoxCzBwD_lM7rJk1JIVbrTbCBQJxXygSGcHtRmND5-M5J7cjxlC_Q5yj52VE8smC9WvcyVuj51ag-OyJM5KPVONvODYOKJPxnbsbc";
            String API_URL_FCM = "https://fcm.googleapis.com/fcm/send";


            String authKey = AUTH_KEY_FCM;   // You FCM AUTH key
            String FMCurl = API_URL_FCM;   
            try {
               URL url = new URL(FMCurl);
               HttpURLConnection conn = (HttpURLConnection) url.openConnection();
               conn.setUseCaches(false); 
               conn.setDoInput(true);
               conn.setDoOutput(true);

               conn.setRequestMethod("POST");
               conn.setRequestProperty("Authorization","key="+authKey);
               conn.setRequestProperty("Content-Type","application/json");

               JSONObject json = new JSONObject();
               json.put("to",userDeviceIdKey.trim());
               JSONObject info = new JSONObject();
               info.put("title", "주문안내");   // Notification title
               info.put("body", "상품 주문이 들어왔습니다!"); // Notification body
               json.put("notification", info);

               OutputStreamWriter wr = new OutputStreamWriter(conn.getOutputStream());
               System.out.println(">" + json.toString());
               wr.write(json.toString());
               wr.flush();
               conn.getInputStream();  
            }catch (Exception e) {
               System.out.println(e.toString() + "안드로이드오류래요");
            }
            //--------------------------------------------------------------------------------------------
      return "redirect:/getpayview.user";
   }
}