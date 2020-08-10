package com.vo;

public class PayVO {

	private int payId;      //주문 id 
	private String payState;//예약? 배달?
	private int pId;        //상품Id
	private int payCount;   //주문 수량
	private String userName;//주문자
	private String payAddr; // 배송지
	private String payTel;  //주문자 전화번호
	private String payDate; //주문일
	private String payContent; //상품 이름 + 상품 옵션 (변경됨)
	private int payTotal;   //수량 * 상품 가격 = 합계금액
	private String payImg;  // 상품 이미지
	private String payStoreName; //상품판매된 점포이름
	private String payTitle;//상품 이름만
	private int payPrice;   //상품 단일가격
	private int userPoint; //고객 보유포인트
	private int bId;
	private int groupId;
	 
	
	public int getGroupId() {
		return groupId;
	}
	public void setGroupId(int groupId) {
		this.groupId = groupId;
	}
	public int getbId() {
		return bId;
	}
	public void setbId(int bId) {
		this.bId = bId;
	}
	public int getUserPoint() {
		return userPoint;
	}
	public void setUserPoint(int userPoint) {
		this.userPoint = userPoint;
	}
	public String getPayTitle() {
		return payTitle;
	}
	public void setPayTitle(String payTitle) {
		this.payTitle = payTitle;
	}
	public int getPayPrice() {
		return payPrice;
	}
	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}
	public String getPayImg() {
		return payImg;
	}
	public void setPayImg(String payImg) {
		this.payImg = payImg;
	}
	public String getPayStoreName() {
		return payStoreName;
	}
	public void setPayStoreName(String payStoreName) {
		this.payStoreName = payStoreName;
	}
	public int getPayUserPoint() {
		return payUserPoint;
	}
	public void setPayUserPoint(int payUserPoint) {
		this.payUserPoint = payUserPoint;
	}
	private int payUserPoint;
	
	
	
	/*
	 //상품 이름 ----------------------------------<없음>---
	   private String pTitle;
	 //상품 사진 이미지----------------------------------<없음>---
	   private String pImg;
	 //상품가격----------------------------------<없음>---
	   private int pPrice;
	   //상품옵션----------------------------------<없음>---
	   private String pOption;
	   //상품 판매 가게 이름 ----------------------------------<없음>---
	   private String psName;
	   //가게 전화번호 ----------------------------------<없음>---
	   private String psTel;
	   //상품 가격 * 상품 갯수 
	   private int pTotal; == payTotal
	   //상품 주문방법 
	   private String pState; == payState
	   //상품 갯수
	   private String pQuantity; ==payCount
	   //구매자 이름
	   private String pUname;==userName
	   //구매자 주소
	   private String pAddr;==payAddr
	   //구매자 전번
	   private String pUtel;==payTel
	   //구매 날짜 ==payDate
		*/
	
	//getter setter
	public int getPayId() {
		return payId;
	}
	public void setPayId(int payId) {
		this.payId = payId;
	}
	public String getPayState() {
		return payState;
	} 
	public void setPayState(String payState) {
		this.payState = payState;
	}
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public int getPayCount() {
		return payCount;
	}
	public void setPayCount(int payCount) {
		this.payCount = payCount;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPayAddr() {
		return payAddr;
	}
	public void setPayAddr(String payAddr) {
		this.payAddr = payAddr;
	}
	public String getPayTel() {
		return payTel;
	}
	public void setPayTel(String payTel) {
		this.payTel = payTel;
	}
	public String getPayDate() {
		return payDate;
	}
	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}
	public String getPayContent() {
		return payContent;
	}
	public void setPayContent(String payContent) {
		this.payContent = payContent;
	}
	public int getPayTotal() {
		return payTotal;
	}
	public void setPayTotal(int payTotal) {
		this.payTotal = payTotal;
	}
	
	
	
	
	
}
