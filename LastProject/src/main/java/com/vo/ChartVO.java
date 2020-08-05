package com.vo;

public class ChartVO {

	private String pName;
	private int cntUser;
	private int sumTotal;
	private String term;
	
	public int getSumTotal() {
		return sumTotal;
	}
	public void setSumTotal(int sumTotal) {
		this.sumTotal = sumTotal;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public int getCntUser() {
		return cntUser;
	}
	public void setCntUser(int cntUser) {
		this.cntUser = cntUser;
	} 
}
