package com.dao;

import java.util.HashMap;
import java.util.List;

import com.vo.ChartVO;
import com.vo.MypageVO;
import com.vo.ProductVO;
import com.vo.ReviewVO;
import com.vo.StoreVO;

public interface mypageDao {
	
	List<HashMap<String, Object>> getPayList(int firstRow, int endRow,String id,MypageVO vo); //구매목록
	//글 전체 갯수 가져오기
	int getTotalCount(HashMap map); //테이블의 전체 글 갯수 가져오기
	List<HashMap<String, Object>> getReviewList(int firstRow,int endRow ,String id);
	int deleteReview(ReviewVO rvo);//review delyn "Y" 처리
	public List<ChartVO> userFoodRank(String id);//user별/주문많이한 음식
	public List<ChartVO> userMoneyChart(String id);
	//seller 마이 페이지
	public StoreVO getStoreById(String id);
	public List<ProductVO> productList(int firstRow,int endRow ,HashMap m);
	}
