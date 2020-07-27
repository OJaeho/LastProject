package com.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daoImpl.qnaDaoImpl;
import com.service.qnaService;
import com.vo.QnaVO;


@Service("qnaService")
public class qnaServiceImpl implements qnaService {
	private int totalRecCount;		// 전체 레코드 수	
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerPage = 3;	// 한페이지당 레코드 수
	
	@Autowired
	private qnaDaoImpl qnaDao;

	public void insertQnA(QnaVO vo) {		
		qnaDao.insertQnA(vo);
		
	}

	
	@Override
	public void deleteQnA(QnaVO vo) {
		qnaDao.deleteQnA(vo);
		
	}

	@Override
	public QnaVO getQnA(QnaVO vo) {
		return qnaDao.getQnA(vo);
	}

	@Override
	public List<QnaVO> getQnAList(String pNum) {
		int pageNum=1;
		if(pNum != null) pageNum = Integer.parseInt(pNum);
		
		int firstRow = (pageNum-1)*countPerPage+1;
		int endRow=pageNum*countPerPage;
	
		//페이지 당 검색해 온 레코드를 return
		return qnaDao.getQnAList(firstRow, endRow);	
	}

	//전체 게시글 수 가져오기
	@Override
	public int getTotalCount() {
		totalRecCount=qnaDao.getTotalCount();
		pageTotalCount=totalRecCount/countPerPage;
		if(totalRecCount % countPerPage>0) pageTotalCount++;
		return pageTotalCount;
	}





}
