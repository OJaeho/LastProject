package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.vo.MarketVO;
import com.vo.NoticeVO;

public interface marketDao {

	public List<MarketVO> selectMarket();

}
