package com.vo;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class TourVO {
	private int tId;
	private String userName;
	private String tName;
	private String tContent;
	private String tDate;
	private String tImg1;
	private String tImg2;
	private String tImg3;
	private String tCate;
	private String delYn;
	private String tAddr;
	private String pfName;
	private Long pfSize;
	
	
	
	public Long getPfSize() {
		return pfSize;
	}
	public String getPfName() {
		return pfName;
	}
	public void setPfName(String pfName) {
		this.pfName = pfName;
	}
	public void setPfSize(Long pfSize) {
		this.pfSize = pfSize;
	}
	
	//사진 업로드
	MultipartFile file;
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		if(!file.isEmpty()) {
			//MultipartFile에서 파일명과 크기만 얻어오기 >>DB에 입력하기 위해서
			this.pfName = file.getOriginalFilename(); //파일명
			this.pfSize = file.getSize(); //파일사이즈

			//실제파일로 저장하기
			File f= new File("D:\\LastProject\\LastProject\\src\\main\\webapp\\resources\\images"+pfName); //괄호 안에 진짜경로
			try {
				file.transferTo(f);
			} catch (IOException e) {
				System.out.println("파일전송실패" + e.getMessage());
				e.printStackTrace();
			}
		}
	}
	public String gettAddr() {
		return tAddr;
	}
	public void settAddr(String tAddr) {
		this.tAddr = tAddr;
	}
	public int gettId() {
		return tId;
	}
	public void settId(int tId) {
		this.tId = tId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public String gettContent() {
		return tContent;
	}
	public void settContent(String tContent) {
		this.tContent = tContent;
	}
	public String gettDate() {
		return tDate;
	}
	public void settDate(String tDate) {
		this.tDate = tDate;
	}
	public String gettImg1() {
		return tImg1;
	}
	public void settImg1(String tImg1) {
		this.tImg1 = tImg1;
	}
	public String gettImg2() {
		return tImg2;
	}
	public void settImg2(String tImg2) {
		this.tImg2 = tImg2;
	}
	public String gettImg3() {
		return tImg3;
	}
	public void settImg3(String tImg3) {
		this.tImg3 = tImg3;
	}
	public String gettCate() {
		return tCate;
	}
	public void settCate(String tCate) {
		this.tCate = tCate;
	}
	public String getDelYn() {
		return delYn;
	}
	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}
}
