package com.service;

import java.util.List;

import com.vo.PagingVO;
import com.vo.TourVO;

public interface tourService {
	//�ֺ������� Ȩȭ��
//	public List<TourVO> tourHome(TourVO vo);
//	public List<TourVO> tourList(Map map);
	
	//������ ����Ʈ �Ѱ���
	public int countTourList();
	//����¡ ó�� ����Ʈ ��ȸ
	public List<TourVO> selectTourList(PagingVO vo);
	//detail ȭ��
	public TourVO tourDetail(TourVO vo);

	
}
