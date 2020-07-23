package com.service;

import java.util.List;

import com.vo.PagingVO;
import com.vo.TourVO;

public interface tourService {
	//주변관광지 홈화면
//	public List<TourVO> tourHome(TourVO vo);
//	public List<TourVO> tourList(Map map);
	
	//관광지 리스트 총갯수
	public int countTourList();
	//페이징 처리 리스트 조회
	public List<TourVO> selectTourList(PagingVO vo);
	//detail 화면
	public TourVO tourDetail(TourVO vo);
	//새 관광지 등록
	public int InsertTour(TourVO vo);

	
}
