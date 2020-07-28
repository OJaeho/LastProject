package com.service;

import java.util.List;

import com.vo.NoticeVO;
import com.vo.QnaVO;


public interface qnaService {
	// CRUD 기능의 메소드 구현
	// 글 등록
	void insertQnA(QnaVO vo);
	
	// 글 삭제
	void deleteQnA(QnaVO vo);

	// 글 상세 조회
	QnaVO getQnA(QnaVO vo);

	// 글 목록 조회
	List<QnaVO> getQnAList(String pNum);
	
	//글 전체 갯수 가져오기
	int getTotalCount();
	
	//아이디가 담당하는 시장Id
	int selectUserMarket(String userName);
	
	void updateQA(QnaVO vo);
}

