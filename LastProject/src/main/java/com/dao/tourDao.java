package com.dao;


import java.util.List;
import java.util.Map;

import com.vo.PagingVO;
import com.vo.TourVO;

public interface tourDao {
	
	//public List<TourVO> tourHome(TourVO vo);
	//public List<TourVO> tourList(Map map);
	
	//������ ����Ʈ ����¡ ó��
	public int countTourList();
	public List<TourVO> selectTourList(PagingVO vo);
	
	//������ ������ ȭ��
	public TourVO tourDetail(TourVO vo);
} 
