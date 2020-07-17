package com.vo;

public class NoticeVO {
	private int nId; 
	private String userBame;
	private String nTitle;
	private String nContent;
	private String nDate;
	private String delYn;
	
	
	public int getnId() {
		return nId;
	}
	public void setnId(int nId) {
		this.nId = nId;
	}
	public String getUserBame() {
		return userBame;
	}
	public void setUserBame(String userBame) {
		this.userBame = userBame;
	}
	public String getnTitle() {
		return nTitle;
	}
	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}
	public String getnContent() {
		return nContent;
	}
	public void setnContent(String nContent) {
		this.nContent = nContent;
	}
	public String getnDate() {
		return nDate;
	}
	public void setnDate(String nDate) {
		this.nDate = nDate;
	}
	public String getDelYn() {
		return delYn;
	}
	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}

}
