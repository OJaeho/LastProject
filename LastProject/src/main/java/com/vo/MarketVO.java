package com.vo;

public class MarketVO {
	private int mkId;
	private String mkName;
	private String mkOwner;
	private String mkAddr;
	private String mkTel;
	private String mkDate;
	private int mkCount;
	private String mkIntro;
	private String mkImg1;
	private String mkImg2;
	private String mkJido;
	private String delYn;
	private String mkLocal;
	private double mkLong;
	private double mkLat;
	private String mkTime;
	private String mkPost;
	private String userName;
	//주소 합치기
	private String mkaddr;
	private String mkdetailAddr;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

	
	public int getMkId() {
		return mkId;
	}
	public void setMkId(int mkId) {
		this.mkId = mkId;
	}
	public String getMkName() {
		return mkName;
	}
	public void setMkName(String mkName) {
		this.mkName = mkName;
	}
	public String getMkOwner() {
		return mkOwner;
	}
	public void setMkOwner(String mkOwner) {
		this.mkOwner = mkOwner;
	}
	public String getMkAddr() {
		setMkAddr();
		return mkAddr;
	}
	public void setMkAddr(String mkAddr) {
		this.mkAddr = mkAddr;
	}
	public void setMkAddr() {
		this.mkAddr = this.mkaddr+" "+this.mkdetailAddr;
	}
	public String getMkTel() {
		return mkTel;
	}
	public void setMkTel(String mkTel) {
		this.mkTel = mkTel;
	}
	public String getMkDate() {
		return mkDate;
	}
	public void setMkDate(String mkDate) {
		this.mkDate = mkDate;
	}
	public int getMkCount() {
		return mkCount;
	}
	public void setMkCount(int mkCount) {
		this.mkCount = mkCount;
	}
	public String getMkIntro() {
		return mkIntro;
	}
	public void setMkIntro(String mkIntro) {
		this.mkIntro = mkIntro;
	}
	public String getMkImg1() {
		return mkImg1;
	}
	public void setMkImg1(String mkImg1) {
		this.mkImg1 = mkImg1;
	}
	public String getMkImg2() {
		return mkImg2;
	}
	public void setMkImg2(String mkImg2) {
		this.mkImg2 = mkImg2;
	}
	public String getMkJido() {
		return mkJido;
	}
	public void setMkJido(String mkJido) {
		this.mkJido = mkJido;
	}
	public String getDelYn() {
		return delYn;
	}
	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}
	public String getMkLocal() {
		return mkLocal;
	}
	public void setMkLocal(String mkLocal) {
		this.mkLocal = mkLocal;
	}
	public double getMkLong() {
		return mkLong;
	}
	public void setMkLong(double mkLong) {
		this.mkLong = mkLong;
	}
	public double getMkLat() {
		return mkLat;
	}
	public void setMkLat(double mkLat) {
		this.mkLat = mkLat;
	}
	public String getMkTime() {
		return mkTime;
	}
	public void setMkTime(String mkTime) {
		this.mkTime = mkTime;
	}
	public String getMkPost() {
		return mkPost;
	}
	public void setMkPost(String mkPost) {
		this.mkPost = mkPost;
	}
	public String getMkaddr() {
		return mkaddr;
	}
	public void setMkaddr(String mkaddr) {
		this.mkaddr = mkaddr;
	}
	public String getMkdetailAddr() {
		return mkdetailAddr;
	}
	public void setMkdetailAddr(String mkdetailAddr) {
		this.mkdetailAddr = mkdetailAddr;
	}
	
	
}
