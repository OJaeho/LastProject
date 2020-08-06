package com.vo;

public class ChartVO {

	private String pName;
	private int cntUser;
	private int sumTotal;
	private int year;
	private int month;
	private String termDate;
	public String getTermDate() {
		return termDate;
	}
	public void setTermDate(String termDate) {
		this.termDate = termDate;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
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
