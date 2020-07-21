package com.service;

import java.util.List;
import java.util.Map;

import com.vo.TourVO;

public interface tourService {
	//주변관광지 홈화면
	public List<TourVO> tourHome(TourVO vo);
	public List<TourVO> tourList(Map map);
}
