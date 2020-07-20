package com.dao;


import java.util.HashMap;
import java.util.List;

import com.vo.TourVO;

public interface tourDao {
	public List<TourVO> tourHome(TourVO vo);
	public List<TourVO> tourList(HashMap map);
} 
