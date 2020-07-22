package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.vo.MarketVO;


public interface marketDao {

	public List<MarketVO> selectMarket();
	
	public MarketVO marketHome(MarketVO vo);

}
