package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.vo.MarketVO;


public interface marketDao {

	public List<MarketVO> selectMarket();
	
	public MarketVO introMarket(MarketVO vo);
	
	public MarketVO marketHome(MarketVO vo);

}
