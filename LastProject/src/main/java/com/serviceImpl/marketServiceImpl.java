package com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daoImpl.marketDaoImpl;
import com.service.marketService;
import com.vo.IssueVO;
import com.vo.MarketVO;

@Service("marketService")
public class marketServiceImpl implements marketService {
	@Autowired
	private marketDaoImpl marketDao;

	@Override
	public MarketVO introMarket(MarketVO vo) {
		return marketDao.introMarket(vo);
	}
	
	@Override
	public List<MarketVO> selectMarket() {
		return marketDao.selectMarket();
	}

	@Override
	public MarketVO marketHome(MarketVO vo) {
		return marketDao.marketHome(vo);
	}

	@Override
	public List<IssueVO> marketIssue(IssueVO vo) {		
		return marketDao.marketIssue(vo);
	}


}
