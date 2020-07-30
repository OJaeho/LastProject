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
	
	//qna 글 등록
	public void insertQnA(QnaVO vo) {		
		qnaDao.insertQnA(vo);
		
	}

	//qna 삭제
	@Override
	public void deleteQnA(QnaVO vo) {
		qnaDao.deleteQnA(vo);
		
	}
	//qna detail 
	@Override
	public QnaVO getQnA(QnaVO vo) {
		return qnaDao.getQnA(vo);
	}

	//qna 리스트 뽑기
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

	//아이디가 담당하는 시장Id 가져오기
	@Override
	public int selectUserMarket(String userName) {
		return qnaDao.selectUserMarket(userName);
	}

	//답변 등록
	@Override
	public void updateQA(QnaVO vo) {
		
		qnaDao.updateQA(vo);
	}





}
