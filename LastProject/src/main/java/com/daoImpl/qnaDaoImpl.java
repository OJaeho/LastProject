package com.daoImpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.qnaDao;
import com.vo.QnaVO;



	@Repository("QnADao") 
	public class qnaDaoImpl implements qnaDao{
		@Autowired
		private SqlSessionTemplate mybatis;

		public void insertQnA(QnaVO vo) {
			System.out.println("===> Mybatis insertQnA() 호출");
			mybatis.insert("QnA.insertQnA", vo);
		}

		public void updateQnA(QnaVO vo) {
			System.out.println("===> Mybatis updateQnA() 호출");
			mybatis.update("QnA.updateQnA", vo);
		}

		public void deleteQnA(QnaVO vo) {
			System.out.println("===> Mybatis deleteQnA() 호출");
			mybatis.delete("QnA.deleteQnA", vo);
		}

		public QnaVO getQnA(QnaVO vo) {
			System.out.println("===> Mybatis getQnA() 호출");
			return (QnaVO) mybatis.selectOne("QnA.getQnA", vo);
		}

		public List<QnaVO> getQnAList(QnaVO vo) {
			System.out.println("===> Mybatis getQnAList() 호출");
			return mybatis.selectList("QnA.getQnAList", vo);
		}
		
//		public List<QnaVO> QnAlist(QnaVO vo) {
//			System.out.println("===> Mybatis Pagelist() 호출");
//			return mybatis.selectList("QnA.Pagelist", vo);
//		}

		@Override
		public List<QnaVO> getQnAList() {
			// TODO Auto-generated method stub
			return mybatis.selectList("QnA.getQnAList");
		}


	}

