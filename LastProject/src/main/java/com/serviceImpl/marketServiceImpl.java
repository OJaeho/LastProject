package com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daoImpl.marketDaoImpl;
import com.service.marketService;
import com.vo.IssueVO;
import com.vo.MarketVO;
import com.vo.NoticeVO;
import com.vo.QnaVO;

@Service("marketService")
public class marketServiceImpl implements marketService {
	@Autowired
	private marketDaoImpl marketDao;

	private int totalRecCount; // 전체 레코드 수
	private int pageTotalCount; // 전체 페이지 수
	private int countPerPage = 5; // 한페이지당 레코드 수

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
	public List<IssueVO> marketIssue(IssueVO vo, String pNum) {
		
		int pageNum = 1;
		if (pNum != null)
			pageNum = Integer.parseInt(pNum);
		int firstRow = (pageNum - 1) * countPerPage + 1;
		int endRow = pageNum * countPerPage;

		return marketDao.marketIssue(vo, endRow, firstRow);
	}

	@Override
	public int getTotalCount(IssueVO vo) {
		totalRecCount = marketDao.getTotalCount(vo);
		pageTotalCount = totalRecCount / countPerPage;
		if (totalRecCount % countPerPage > 0) {
			pageTotalCount++;
		}
		return pageTotalCount;
	}

	@Override
	public int saveIssue(IssueVO vo) {
		return marketDao.saveIssue(vo);
		
	}

	@Override
	public int deleteIssue(IssueVO vo) {
		return marketDao.deleteIssue(vo);
		
	}

	@Override
	public int insertMarket(MarketVO mvo) {
		return marketDao.saveMarket(mvo);
		
	}

	@Override
	public MarketVO marketDetail(int mkId) {
		return marketDao.marketDetail(mkId);
	}

	@Override
	public int updateMarket(MarketVO vo) {
		return marketDao.updateMarket(vo);
		
	}
	
	@Override
	public int deleteMarket(MarketVO vo) {
		return marketDao.deleteMarket(vo);
		
	}

	@Override
	public MarketVO selectMkName(int mkId) {
		
		return marketDao.selectMkName(mkId);
	}
	
	// 홈화면 공지/이슈/qna 가져오기
	@Override
	public List<NoticeVO> selectnotice(NoticeVO nvo) {
		return marketDao.selectnotice(nvo);
	}
	@Override
	public List<IssueVO> selectissue(IssueVO ivo) {
		return marketDao.selectissue(ivo);
	}
	@Override
	public List<QnaVO> selectqna(QnaVO qvo) {
		return marketDao.selectqna(qvo);
	}
	
	

}
