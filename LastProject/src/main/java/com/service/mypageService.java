package com.service;

import java.util.HashMap;
import java.util.List;

import com.vo.ReviewVO;

public interface mypageService {
	
	List<HashMap<String, Object>> payList(String pNum,String id); //구매목록
	//글 전체 갯수 가져오기
	int getTotalCount(HashMap map); //테이블의 전체 글 갯수 가져오기
	List<HashMap<String, Object>> reviewList(String pNum, String id);//id조건 리뷰 리스트 가져오기
	int deleteReview(ReviewVO rvo);//review delyn "Y" 처리
}
