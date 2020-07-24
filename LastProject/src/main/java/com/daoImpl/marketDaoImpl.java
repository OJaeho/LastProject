package com.daoImpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dao.marketDao;
import com.vo.IssueVO;
import com.vo.MarketVO;

	@Repository("marketDao") 
	public class marketDaoImpl implements marketDao{
		@Autowired
		private SqlSessionTemplate mybatis;

		@Override
		public List<MarketVO> selectMarket() {
			System.out.println("===> Mybatis selectMarket() 호출");
			return mybatis.selectList("MarketDAO.market");
		}
		
		@Override
		public MarketVO introMarket(MarketVO vo) {
			System.out.println("===> Mybatis introMarket() 호출");
			return mybatis.selectOne("MarketDAO.introMarket",vo);
		}

		@Override
		public MarketVO marketHome(MarketVO vo) {
			System.out.println("===> Mybatis marketHome() 호출");
			return mybatis.selectOne("MarketDAO.marketHome",vo);
		}

		@Override
		public List<IssueVO> marketIssue(IssueVO vo) {
			System.out.println("===> Mybatis marketIssue() 호출");
			return mybatis.selectList("MarketDAO.marketIssue",vo);
		}


	}

