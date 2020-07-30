package com.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dao.marketDao;
import com.vo.IssueVO;
import com.vo.MarketVO;
import com.vo.PagingVO;
import com.vo.TourVO;

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
		public int getTotalCount(IssueVO vo) {
			System.out.println("===> Mybatis getTotalCount() 호출");
			return mybatis.selectOne("MarketDAO.getTotalCount",vo);
		}

		@Override
		public List<IssueVO> marketIssue(IssueVO vo, int endRow, int firstRow) {
			System.out.println("===> Mybatis marketIssue() 호출");
			HashMap m=new HashMap();
			m.put("first",firstRow);
			m.put("end", endRow);
			m.put("mkId", vo.getMkId());
			return mybatis.selectList("MarketDAO.marketIssue",m);
		}

		public int saveIssue(IssueVO vo) {
			System.out.println("===> Mybatis saveIssue() 호출");
			return mybatis.insert("MarketDAO.saveIssue", vo);
			
		}

		public int deleteIssue(IssueVO vo) {
			System.out.println("===> Mybatis deleteIssue() 호출");
			return mybatis.delete("MarketDAO.deleteIssue", vo);
			
		}

		public int saveMarket(MarketVO mvo) {
			System.out.println("===> Mybatis saveMarket() 호출");			
			mybatis.insert("MemberMapper.insertMarketAuthority", mvo);
			mybatis.insert("MemberMapper.insertSellerAuthority", mvo);
			return mybatis.insert("MarketDAO.saveMarket", mvo);
		}

		public MarketVO marketDetail(int mkId) {
			System.out.println("===> Mybatis marketDetail() 호출");
			return mybatis.selectOne("MarketDAO.marketDetail",mkId);
		}

		public int updateMarket(MarketVO vo) {
			System.out.println("===> Mybatis updateMarket() 호출");
			return mybatis.update("MarketDAO.updateMarket",vo);
			
		}

		public int deleteMarket(MarketVO vo) {
			System.out.println("===> Mybatis deleteMarket() 호출");
			return mybatis.update("MarketDAO.deleteMarket",vo);
			
		}
		

	}

