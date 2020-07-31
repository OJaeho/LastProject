package com.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.tourDao;
import com.vo.PagingVO;
import com.vo.TourVO;


@Repository("tourdao")
public class tourDaoImpl implements tourDao {

	@Autowired
	private SqlSessionTemplate mybatis;
	
//	public List<TourVO> tourHome(TourVO vo) {
//		return mybatis.selectList("tour.tourHome", vo);
//	}
//	
//	public List<TourVO> tourList(Map map) {
//		return mybatis.selectList("tour.tourList", map);
//	}

	//관광지 리스트, 페이징처리
	@Override
	public int countTourList(int mkId) {
		return mybatis.selectOne("tour.tourCount",mkId);
	}
	@Override
	public List<TourVO> selectTourList(PagingVO vo, int mkId) {
		HashMap map = new HashMap();
		map.put("vo", vo);
		map.put("mkId", mkId);
		return mybatis.selectList("tour.selectTour", map);
	}
	
	//관광지 디테일 화면
	public TourVO tourDetail(TourVO vo) {
		return mybatis.selectOne("tour.selectTourDetail", vo);
	}
	@Override
	public int InsertTour(TourVO vo, int mkId) {
		HashMap map = new HashMap();
		map.put("vo", vo);
		map.put("mkId", mkId);
		return mybatis.insert("tour.insertTour",map);
	}
	@Override
	public void deleteTour(String tId) {
		mybatis.delete("tour.deleteTour", tId);
	}
	
} 
