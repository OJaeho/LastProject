package com.service;

import java.util.List;
import com.vo.IssueVO;
import com.vo.MarketVO;

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
	void saveIssue(IssueVO vo);
	

}

