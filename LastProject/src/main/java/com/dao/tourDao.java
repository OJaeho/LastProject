package com.dao;


import java.util.List;
import java.util.Map;

import com.vo.PagingVO;
import com.vo.TourVO;

public interface tourDao {
	
	//public List<TourVO> tourHome(TourVO vo);
	//public List<TourVO> tourList(Map map);
	
	//관광지 리스트 페이징 처리
	public int countTourList();
	public List<TourVO> selectTourList(PagingVO vo);
	
	//관광지 디테일 화면
	public TourVO tourDetail(TourVO vo);
} 
