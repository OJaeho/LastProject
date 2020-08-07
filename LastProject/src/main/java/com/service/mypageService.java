package com.service;

import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONObject;

import com.vo.MypageVO;
import com.vo.ReviewVO;
import com.vo.StoreVO;

public interface mypageService {
	
	List<HashMap<String, Object>> payList(String pNum,String id,MypageVO vo); //구매목록
	//글 전체 갯수 가져오기
	int getTotalCount(HashMap map); //테이블의 전체 글 갯수 가져오기
	List<HashMap<String, Object>> reviewList(String pNum, String id);//id조건 리뷰 리스트 가져오기
	int deleteReview(ReviewVO rvo);//review delyn "Y" 처리
	public JSONObject userFoodRank(String id); //user별/주문많이한 음식
	public JSONObject userMoneyChart(String id) throws Exception; //user별/기간별 돈사용한 시간
	//seller 마이 페이지
	public StoreVO getStoreById(String id);
}
