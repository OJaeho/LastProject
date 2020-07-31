package com.service;

import java.util.List;

import com.vo.PagingVO;
import com.vo.TourVO;

public interface tourService {
	
	//관광지 리스트 총갯수
	public int countTourList(int mkId);
	
	//페이징 처리 리스트 조회
	public List<TourVO> selectTourList(PagingVO vo, int mkId);
	
	//detail 화면
	public TourVO tourDetail(TourVO vo);
	
	//새 관광지 등록
	public int InsertTour(TourVO vo,int mkId);
	
	//관광지 삭제
	public void deleteTour(String tId);

	
}
