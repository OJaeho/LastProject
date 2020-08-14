package com.service;

import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONObject;

import com.vo.MarketVO;
import com.vo.MypageVO;
import com.vo.PayVO;
import com.vo.ProductVO;
import com.vo.ReviewVO;
import com.vo.StoreVO;
import com.vo.UsersVO;

public interface mypageService {
	
	public JSONObject payList(String id,MypageVO vo); //구매목록
	//글 전체 갯수 가져오기
	int getTotalCount(HashMap map); //테이블의 전체 글 갯수 가져오기
	List<HashMap<String, Object>> reviewList(String pNum, String id);//id조건 리뷰 리스트 가져오기
	int deleteReview(ReviewVO rvo);//review delyn "Y" 처리
	public JSONObject userFoodRank(String id); //user별/주문많이한 음식
	public JSONObject userMoneyChart(String id) throws Exception; //user별/기간별 돈사용한 시간
	//seller 마이 페이지
	public StoreVO getStoreById(String id);
	public List<HashMap> getCntZeroProduct(String sId);
	public JSONObject getProductListTypeJson(String sId,String no); //무한스크롤 ProductVO
	public List<HashMap> getRecentOrderList(String sId);
	public JSONObject getSaleListTypeJson(String sId,String no)throws Exception;
	public int readyOrder(PayVO vo);
	public HashMap getStoreMemberbyId(String id);
	public int sellerProfileUpdate(StoreVO svo,UsersVO uvo);
	public void updatePro(ProductVO vo);
	public ProductVO getProductById(String pId);
	//Market 마이페이지
	public MarketVO getMarketById(String id);//해당 아이디의 마켓 정보 가져오기
	public JSONObject getStoreListJson(String mkId,String no)throws Exception;//storeList 가져오기
	
	
}