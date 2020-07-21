package com.daoImpl;

import java.util.List;
import java.util.Map;

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
	public int countTourList() {
		return mybatis.selectOne("tour.tourCount");
	}
	@Override
	public List<TourVO> selectTourList(PagingVO vo) {
		return mybatis.selectList("tour.selectTour",vo);
	}
	
	//관광지 디테일 화면
	public TourVO tourDetail(TourVO vo) {
		return mybatis.selectOne("tour.selectTourDetail", vo);
	}
} 
