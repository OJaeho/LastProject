package com.service;

import java.util.List;
import java.util.Map;

import com.vo.TourVO;

public interface tourService {
	//�ֺ������� Ȩȭ��
	public List<TourVO> tourHome(TourVO vo);
	public List<TourVO> tourList(Map map);
}
