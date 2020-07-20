package com.daoImpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.noticeDao;
import com.vo.NoticeVO;



	@Repository("noticeDao") 
	public class noticeDaoImpl implements noticeDao{
		@Autowired
		private SqlSessionTemplate mybatis;

		public void insertNotice(NoticeVO vo) {
			System.out.println("===> Mybatis insertNotice() 호출");
			mybatis.insert("Notice.insertNotice", vo);
		}

		public void updateNotice(NoticeVO vo) {
			System.out.println("===> Mybatis updateNotice() 호출");
			mybatis.update("NoticeDAO.updateNotice", vo);
		}

		public void deleteNotice(NoticeVO vo) {
			System.out.println("===> Mybatis deleteNotice() 호출");
			mybatis.delete("NoticeDAO.deleteNotice", vo);
		}

		public NoticeVO getNotice(NoticeVO vo) {
			System.out.println("===> Mybatis getNotice() 호출");
			return (NoticeVO) mybatis.selectOne("NoticeDAO.getNotice", vo);
		}

//		public List<NoticeVO> getNoticeList(NoticeVO vo) {
//			System.out.println("===> Mybatis getNoticeList() 호출");
//			return mybatis.selectList("Notice.getNoticeList", vo);
//		}
		
		public List<NoticeVO> Pagelist(NoticeVO vo) {
			System.out.println("===> Mybatis Pagelist() 호출");
			return mybatis.selectList("NoticeDAO.Pagelist", vo);
		}

		@Override
		public List<NoticeVO> getNoticeList() {
			// TODO Auto-generated method stub
			return mybatis.selectList("Notice.getNoticeList");
		}
		
	}

