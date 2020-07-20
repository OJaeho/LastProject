package com.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.tourDao;
import com.daoImpl.tourDaoImpl;
import com.service.tourService;
import com.vo.TourVO;

@Service("service")
public class tourServiceImpl implements tourService {
	
	@Autowired
	private tourDao tourdao;
	
	public List<TourVO> tourHome(TourVO vo) {
		return tourdao.tourHome(vo); 
	}
	
	public List<TourVO> tourList(HashMap map) {
		return tourdao.tourList(map);
	}
	
}
