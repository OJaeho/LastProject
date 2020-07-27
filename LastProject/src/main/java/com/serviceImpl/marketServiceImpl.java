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
	public void saveIssue(IssueVO vo) {
		marketDao.saveIssue(vo);
		
	}

}
