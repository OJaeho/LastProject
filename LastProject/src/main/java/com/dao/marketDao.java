package com.dao;

import java.util.List;
import com.vo.IssueVO;
import com.vo.MarketVO;


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
}

