package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.vo.IssueVO;
import com.vo.MarketVO;


public interface marketDao {

	public List<MarketVO> selectMarket();
	
	public MarketVO introMarket(MarketVO vo);
	
	public MarketVO marketHome(MarketVO vo);
	
	public List<IssueVO> marketIssue(IssueVO vo);

}
