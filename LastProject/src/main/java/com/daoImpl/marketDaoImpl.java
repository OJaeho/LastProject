package com.daoImpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dao.marketDao;
import com.vo.MarketVO;

	@Repository("marketDao") 
	public class marketDaoImpl implements marketDao{
		@Autowired
		private SqlSessionTemplate mybatis;

//		public void insertNotice(NoticeVO vo) {
//			System.out.println("===> Mybatis insertNotice() 호출");
//			mybatis.insert("Notice.insertNotice", vo);
//		}
//
//		public void updateNotice(NoticeVO vo) {
//			System.out.println("===> Mybatis updateNotice() 호출");
//			mybatis.update("NoticeDAO.updateNotice", vo);
//		}
//
//		public void deleteNotice(NoticeVO vo) {
//			System.out.println("===> Mybatis deleteNotice() 호출");
//			mybatis.delete("NoticeDAO.deleteNotice", vo);
//		}
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


	}

