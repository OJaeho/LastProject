package com.service;

import java.util.HashMap;
import java.util.List;

import com.vo.TourVO;

public interface tourService {
	//주변관광지 홈화면
	public List<TourVO> tourHome(TourVO vo);
	public List<TourVO> tourList(HashMap map);
}
