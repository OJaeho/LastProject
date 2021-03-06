package com.dao;

import java.util.HashMap;
import java.util.List;

import com.vo.ChartVO;
import com.vo.MarketVO;
import com.vo.MypageVO;
import com.vo.PayVO;
import com.vo.ProductVO;
import com.vo.ReviewVO;
import com.vo.StoreVO;
import com.vo.UsersVO;

public interface mypageDao {
   
   List<HashMap<Object,Object>> getPayList(String id,MypageVO vo); //구매목록
   //글 전체 갯수 가져오기
   int getTotalCount(HashMap map); //테이블의 전체 글 갯수 가져오기
   List<HashMap<String, Object>> getReviewList(int firstRow,int endRow ,String id);
   int deleteReview(ReviewVO rvo);//review delyn "Y" 처리
   public List<ChartVO> userFoodRank(String id);//user별/주문많이한 음식
   public List<ChartVO> userMoneyChart(String id);
   //seller 마이 페이지
   public StoreVO getStoreById(String id);
   public List<ProductVO> productList(String sId,String no);
   public ProductVO getProductById(String pId); //상품 Id로 상품가져오기
   public int deleteProduct(String pId);//상품 삭제
   public List<HashMap> getCntZeroProduct(String sId);
   public List<HashMap> getRecentOrderList(String sId);
   public List<HashMap> getSaleListTypeJson(String sId,String no);
   public int readyOrder(PayVO vo);
   public HashMap getStoreMemberbyId(String id);
   public int sellerProfileUpdate(StoreVO svo,UsersVO uvo);
   public void updatePro(ProductVO vo);
   //market 마이페이지
   public MarketVO getMarketById(String id);
   public List<HashMap> getStoreListJson(String mkId,String no);

}