package com.service;

import java.util.List;

import com.vo.NoticeVO;
import com.vo.QnaVO;


public interface qnaService {
	// CRUD 기능의 메소드 구현
	// 글 등록
	static void insertQnA(QnaVO vo) {
	} 
	
	// 글 수정
	void updateQnA(QnaVO vo);

	// 글 삭제
	void deleteQnA(QnaVO vo);

	// 글 상세 조회
	QnaVO getQnA(QnaVO vo);

	// 글 목록 조회
	List<QnaVO> getQnAList();
	
	// 내 글 목록 조회
	List<QnaVO> Pagelist(QnaVO vo);
}
