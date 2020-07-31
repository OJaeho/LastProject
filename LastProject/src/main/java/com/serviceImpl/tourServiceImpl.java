package com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.tourDao;
import com.service.tourService;
import com.vo.PagingVO;
import com.vo.TourVO;

@Service("tourservice")
public class tourServiceImpl implements tourService {
	
	@Autowired
	private tourDao tourdao;
	
//	public List<TourVO> tourHome(TourVO vo) {
//		return tourdao.tourHome(vo); 
//	}
//	
//	public List<TourVO> tourList(Map map) {
//		return tourdao.tourList(map);
//	}
	//관광지 페이징, 리스트 목록
	public int countTourList(int mkId) {
		return tourdao.countTourList(mkId);
	}
	@Override
	public List<TourVO> selectTourList(PagingVO vo, int mkId) {
		return tourdao.selectTourList(vo, mkId);
	}

	//관광지 디테일 화면
	@Override
	public TourVO tourDetail(TourVO vo) {
		return tourdao.tourDetail(vo);
	}
	//신규 관광지 등록
	@Override
	public int InsertTour(TourVO vo, int mkId) {
		return tourdao.InsertTour(vo, mkId);
	}
	@Override
	public void deleteTour(String tId) {
		tourdao.deleteTour(tId);
	}
	 
}
