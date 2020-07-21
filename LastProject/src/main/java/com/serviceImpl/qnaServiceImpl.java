package com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daoImpl.qnaDaoImpl;
import com.service.qnaService;
import com.vo.QnaVO;


@Service("qnaService")
public class qnaServiceImpl implements qnaService {
	@Autowired
	private qnaDaoImpl qnaDao;

	public void insertQnA(QnaVO vo) {		
		qnaDao.insertQnA(vo);
		
	}

	@Override
	public void updateQnA(QnaVO vo) {
		qnaDao.updateQnA(vo);
		
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
	public List<QnaVO> getQnAList() {
		return qnaDao.getQnAList();
	}

	@Override
	public List<QnaVO> Pagelist(QnaVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

//	@Override
//	public List<QnaVO> Pagelist(QnaVO vo) {
//		// TODO Auto-generated method stub
//		return null;
//	}



}
