package com.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.tourDao;
import com.service.tourService;
import com.vo.TourVO;

@Service("tourservice")
public class tourServiceImpl implements tourService {
	
	@Autowired
	private tourDao tourdao;
	
	public List<TourVO> tourHome(TourVO vo) {
		return tourdao.tourHome(vo); 
	}
	
	public List<TourVO> tourList(Map map) {
		return tourdao.tourList(map);
	}
	
}
