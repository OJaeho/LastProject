package com.daoImpl;

import java.util.HashMap;
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

		public int insertNotice(NoticeVO vo) {
			System.out.println("===> Mybatis insertNotice() 호출");
			return (int)mybatis.insert("Notice.insertNotice", vo);
		}

		public void updateNotice(NoticeVO vo) {
			System.out.println("===> Mybatis updateNotice() 호출");
			mybatis.update("Notice.updateNotice", vo);
		}

		public void deleteNotice(NoticeVO vo) {
			System.out.println("===> Mybatis deleteNotice() 호출");
			mybatis.delete("Notice.deleteNotice", vo);
		}

		public NoticeVO getNotice(NoticeVO vo) {
			System.out.println("===> Mybatis getNotice() 호출");
			return (NoticeVO) mybatis.selectOne("Notice.getNotice", vo);
		}


		@Override
		public List<NoticeVO> getNoticeList(int firstRow,int endRow,int mkId) {
			System.out.println("===> Mybatis getQnAList() 호출");
			HashMap m=new HashMap();
			m.put("first",firstRow);
			m.put("end", endRow);
			m.put("mkId", mkId);
			return mybatis.selectList("Notice.getNoticeList",m );
		}
		
		@Override
		public int getTotalCount(int mkId) {
			System.out.println("===> QnA getTotalCount 호출");
			HashMap m=new HashMap();
			m.put("mkId", mkId);
			System.out.println(mybatis.selectOne("Notice.getTotalCount",m)+"dlrjekdhfkshe");
			return mybatis.selectOne("Notice.getTotalCount",m);
			
		}
		
	}

