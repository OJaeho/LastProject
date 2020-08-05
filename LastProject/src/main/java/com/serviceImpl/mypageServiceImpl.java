package com.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.mypageDao;
import com.service.mypageService;
import com.vo.ReviewVO;

@Service("mypageService")
public class mypageServiceImpl implements mypageService {
	private int totalRecCount;		// 전체 레코드 수	
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerPage = 10;	// 한페이지당 레코드 수
	
	@Autowired
	mypageDao mypageDao;
	@Override
	public List<HashMap<String, Object>> payList(String pNum,String id) {
		int pageNum=1;
		if(pNum != null) pageNum = Integer.parseInt(pNum);
		
		int firstRow = (pageNum-1)*countPerPage+1;
		int endRow=pageNum*countPerPage;
	
		//페이지 당 검색해 온 레코드를 return
		return mypageDao.getPayList(firstRow, endRow ,id);	
	}

	@Override
	public int getTotalCount(HashMap map) {
		totalRecCount=mypageDao.getTotalCount(map);
		pageTotalCount=totalRecCount/countPerPage;
		if(totalRecCount % countPerPage>0) pageTotalCount++;
		return pageTotalCount;
	}

	@Override
	public List<HashMap<String, Object>> reviewList(String pNum,String id) {
		int pageNum=1;
		if(pNum != null) pageNum = Integer.parseInt(pNum);
		
		int firstRow = (pageNum-1)*countPerPage+1;
		int endRow=pageNum*countPerPage;
	
		//페이지 당 검색해 온 레코드를 return
		return mypageDao.getReviewList(firstRow, endRow ,id);	
	}

	@Override
	public int deleteReview(ReviewVO rvo) {
		return mypageDao.deleteReview(rvo);
	}


}
