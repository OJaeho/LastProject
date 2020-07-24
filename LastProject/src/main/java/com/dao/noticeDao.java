package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.vo.NoticeVO;

public interface noticeDao {
	public int insertNotice(NoticeVO vo);
	
	public NoticeVO getNotice(NoticeVO vo);
	
	public List<NoticeVO> getNoticeList();

}
