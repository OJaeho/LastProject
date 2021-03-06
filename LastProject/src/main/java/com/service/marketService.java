package com.service;

import java.util.List;

import com.vo.IssueVO;
import com.vo.MarketVO;
import com.vo.NoticeVO;
import com.vo.QnaVO;

public interface marketService {

	// 시장소개 정보 조회
	MarketVO introMarket(MarketVO vo);

	// 풋터 마켓 목록 조회
	List<MarketVO> selectMarket();
	
	// 마켓홈 이동할때 mkid 호출
	MarketVO marketHome(MarketVO vo);
	
	// 풋터 마켓 목록 조회
	List<IssueVO> marketIssue(IssueVO vo,String pNum);

	// 시장이슈리스트 전체 게시글 수 조회
	int getTotalCount(IssueVO vo);
	
	// 시장이슈 등록 후 저장
	int saveIssue(IssueVO vo);
	
	// 시장이슈 삭제
	int deleteIssue(IssueVO vo);

	// 시장 등록 후 저장
	int insertMarket(MarketVO mvo);
	
	// 시장 등록하여 화면이동 후 시장정보 조회
	MarketVO marketDetail(int mkId);

	// 시장 정보 수정
	int updateMarket(MarketVO vo);
	
	// 시장 정보 삭제
	int deleteMarket(MarketVO vo);
	
	//mkId 로 mkName으로 찾기
	MarketVO selectMkName(int mkId);
	
	//홈화면 공지/이슈/qna 정보 가져오기
	List<NoticeVO> selectnotice(NoticeVO nvo);
	List<IssueVO> selectissue(IssueVO ivo);
	List<QnaVO> selectqna(QnaVO qvo);

}

