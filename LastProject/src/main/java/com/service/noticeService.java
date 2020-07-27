package com.service;

import java.util.List;

import com.vo.NoticeVO;


public interface noticeService {
	// CRUD 기능의 메소드 구현
	// 글 등록
	int insertNotice(NoticeVO vo);

	// 글 삭제
	void deleteNotice(NoticeVO vo);

	// 글 상세 조회
	NoticeVO getNotice(NoticeVO vo);

	// 글 목록 조회
	List<NoticeVO> getNoticeList(String pNum,int mkId);
	
	//글 전체 페이지 수
	public int getTotalCount(int mkId);
}

