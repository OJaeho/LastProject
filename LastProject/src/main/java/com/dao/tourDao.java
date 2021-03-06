package com.dao;


import java.util.List;
import java.util.Map;

import com.vo.PagingVO;
import com.vo.TourVO;

public interface tourDao {
	
	//public List<TourVO> tourHome(TourVO vo);
	//public List<TourVO> tourList(Map map);
	
	//관광지 리스트 페이징 처리
	public int countTourList(int mkId);
	public List<TourVO> selectTourList(PagingVO vo, int mkId);
	
	//관광지 디테일 화면
	public TourVO tourDetail(TourVO vo);
	
	//신규 관광지 등록(관리자)
	public int InsertTour(TourVO vo,int mkId);
	
	//관광지 삭제(관리자)
	public void deleteTour(String tId);
} 
