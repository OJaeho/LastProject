package com.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dao.marketDao;
import com.vo.IssueVO;
import com.vo.MarketVO;
import com.vo.NoticeVO;
import com.vo.PagingVO;
import com.vo.QnaVO;
import com.vo.TourVO;

	@Repository("marketDao") 
	public class marketDaoImpl implements marketDao{
		@Autowired
		private SqlSessionTemplate mybatis;

		@Override
		public List<MarketVO> selectMarket() {
			return mybatis.selectList("MarketDAO.market");
		}
		
		@Override
		public MarketVO introMarket(MarketVO vo) {
			return mybatis.selectOne("MarketDAO.introMarket",vo);
		}

		@Override
		public MarketVO marketHome(MarketVO vo) {
			return mybatis.selectOne("MarketDAO.marketHome",vo);
		}
	
		
		@Override
		public int getTotalCount(IssueVO vo) {
			return mybatis.selectOne("MarketDAO.getTotalCount",vo);
		}

		@Override
		public List<IssueVO> marketIssue(IssueVO vo, int endRow, int firstRow) {
			HashMap m=new HashMap();
			m.put("first",firstRow);
			m.put("end", endRow);
			m.put("mkId", vo.getMkId());
			return mybatis.selectList("MarketDAO.marketIssue",m);
		}

		public int saveIssue(IssueVO vo) {
			return mybatis.insert("MarketDAO.saveIssue", vo);
			
		}

		public int deleteIssue(IssueVO vo) {
			return mybatis.delete("MarketDAO.deleteIssue", vo);
			
		}

		public int saveMarket(MarketVO mvo) {
			mybatis.insert("MemberMapper.insertMarketAuthority", mvo);
			mybatis.insert("MemberMapper.insertSellerAuthority", mvo);
			return mybatis.insert("MarketDAO.saveMarket", mvo);
		}

		public MarketVO marketDetail(int mkId) {
			return mybatis.selectOne("MarketDAO.marketDetail",mkId);
		}

		public int updateMarket(MarketVO vo) {
			if(vo.getMkName() ==null) {
			return mybatis.update("MarketDAO.updateMarket",vo);
			}else {
				return mybatis.update("MarketDAO.AupdateMarket",vo);
			}
		}

		public int deleteMarket(MarketVO vo) {
			return mybatis.update("MarketDAO.deleteMarket",vo);
			
		}

		@Override
		public MarketVO selectMkName(int mkId) {
			
			return mybatis.selectOne("MarketDAO.selectMkName", mkId);
		}
		
		
		// 홈화면 공지/이슈/qna 가져오기
		@Override
		public List<NoticeVO> selectnotice(NoticeVO nvo) {
			return mybatis.selectList("MarketDAO.selectnotice", nvo);
		}
		@Override
		public List<IssueVO> selectissue(IssueVO ivo) {
			return mybatis.selectList("MarketDAO.selectissue", ivo);
		}
		@Override
		public List<QnaVO> selectqna(QnaVO qvo) {
			return mybatis.selectList("MarketDAO.selectqna", qvo);
		}
		

	}

