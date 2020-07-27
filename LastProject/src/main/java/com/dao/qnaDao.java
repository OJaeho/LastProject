package com.dao;

import java.util.List;

import com.vo.QnaVO;

public interface qnaDao {
	public void insertQnA(QnaVO vo);
	
	public void updateQnA(QnaVO vo) ;

	public void deleteQnA(QnaVO vo);
		
	public QnaVO getQnA(QnaVO vo);
	
	public List<QnaVO> getQnAList(int firstRow,int endRow);

	public int getTotalCount();
}
