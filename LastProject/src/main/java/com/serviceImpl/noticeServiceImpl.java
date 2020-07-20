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
	@Autowired
	private noticeDaoImpl noticeDao;

	@Override
	public void insertNotice(NoticeVO vo) {		
		noticeDao.insertNotice(vo);
		
	}

	@Override
	public void updateNotice(NoticeVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public NoticeVO getNotice(NoticeVO vo) {
		return noticeDao.getNotice(vo);
	}

	@Override
	public List<NoticeVO> getNoticeList() {
		return noticeDao.getNoticeList();
	}

	@Override
	public List<NoticeVO> Pagelist(NoticeVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteNotice(NoticeVO vo) {
		// TODO Auto-generated method stub
		
	}


}
