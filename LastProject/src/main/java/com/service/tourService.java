package com.service;

import java.util.HashMap;
import java.util.List;

import com.vo.TourVO;

public interface tourService {
	//�ֺ������� Ȩȭ��
	public List<TourVO> tourHome(TourVO vo);
	public List<TourVO> tourList(HashMap map);
}
