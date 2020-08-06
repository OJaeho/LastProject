package com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daoImpl.noticeDaoImpl;
import com.service.noticeService;
import com.vo.NoticeVO;
import com.dao.*;


@Service("noticeService")
public class noticeServiceImpl implements noticeService {
	private int totalRecCount;		// 전체 레코드 수	
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerPage = 10;	// 한페이지당 레코드 수
	
	
	@Autowired
	private noticeDaoImpl noticeDao;

	//공지 입력
	@Override
	public int insertNotice(NoticeVO vo) {		
		return (int)noticeDao.insertNotice(vo);
		
	}

	//공지 게시글 하나 가져오기
	@Override
	public NoticeVO getNotice(NoticeVO vo) {
		return noticeDao.getNotice(vo);
	}

	//공지 페이징 처리된 list 불러오기
	@Override
	public List<NoticeVO> getNoticeList(String pNum,int mkId) {
		int pageNum=1;
		if(pNum != null) pageNum = Integer.parseInt(pNum);
		
		int firstRow = (pageNum-1)*countPerPage+1;
		int endRow=pageNum*countPerPage;
	
		//페이지 당 검색해 온 레코드를 return	
		return noticeDao.getNoticeList(firstRow, endRow,mkId);
	}
	
	@Override
	public int getTotalCount(int mkId) {
		totalRecCount=noticeDao.getTotalCount(mkId);
		pageTotalCount=totalRecCount/countPerPage;
		if(totalRecCount % countPerPage>0) pageTotalCount++;
		return pageTotalCount;
	}


	@Override
	public void deleteNotice(NoticeVO vo) {
		// TODO Auto-generated method stub
		
	}


}
