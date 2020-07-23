package com.service;

import java.util.List;

import com.vo.MarketVO;
import com.vo.NoticeVO;


public interface marketService {
	// CRUD 기능의 메소드 구현
//	// 글 등록
//	void insertNotice(NoticeVO vo);
//	
//	// 글 수정
//	void updateNotice(NoticeVO vo);
//
//	// 글 삭제
//	void deleteNotice(NoticeVO vo);
//
	// 시장소개 정보 조회
	MarketVO introMarket(MarketVO vo);

	// 풋터 마켓 목록 조회
	List<MarketVO> selectMarket();
	
	// 마켓홈 이동할때 mkid 호출
	MarketVO marketHome(MarketVO vo);

}

