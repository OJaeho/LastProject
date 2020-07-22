package com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daoImpl.marketDaoImpl;
import com.service.marketService;
import com.vo.MarketVO;



@Service("marketService")
public class marketServiceImpl implements marketService {
	@Autowired
	private marketDaoImpl marketDao;

//	@Override
//	public void insertNotice(NoticeVO vo) {		
//		noticeDao.insertNotice(vo);
//		
//	}
//
//	@Override
//	public void updateNotice(NoticeVO vo) {
//		// TODO Auto-generated method stub
//		
//	}
//
//	@Override
//	public NoticeVO getNotice(NoticeVO vo) {
//		return noticeDao.getNotice(vo);
//	}
	@Override
	public List<MarketVO> selectMarket() {
		return marketDao.selectMarket();
	}

	@Override
	public MarketVO marketHome(MarketVO vo) {
		return marketDao.marketHome(vo);
	}


//	@Override
//	public List<NoticeVO> Pagelist(NoticeVO vo) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public void deleteNotice(NoticeVO vo) {
//		// TODO Auto-generated method stub
//		
//	}


}
