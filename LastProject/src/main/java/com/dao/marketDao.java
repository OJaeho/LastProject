package com.dao;

import java.util.List;
import com.vo.IssueVO;
import com.vo.MarketVO;
import com.vo.NoticeVO;
import com.vo.QnaVO;

public interface marketDao {

	public List<MarketVO> selectMarket();

	public MarketVO introMarket(MarketVO vo);

	public MarketVO marketHome(MarketVO vo);

	public int getTotalCount(IssueVO vo);

	public List<IssueVO> marketIssue(IssueVO vo, int endRow, int firstRow);

	public int saveIssue(IssueVO vo);

	public int deleteIssue(IssueVO vo);

	public int saveMarket(MarketVO mvo);

	public MarketVO marketDetail(int mkId);

	public int updateMarket(MarketVO vo);

	public MarketVO selectMkName(int mkId);

	// 홈화면 공지/이슈/qna 가져오기
	public List<NoticeVO> selectnotice(NoticeVO nvo);
	public List<IssueVO> selectissue(IssueVO ivo);
	public List<QnaVO> selectqna(QnaVO qvo);
}
