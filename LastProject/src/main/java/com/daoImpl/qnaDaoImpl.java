package com.daoImpl;

import java.util.HashMap;
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

		public List<QnaVO> getQnAList(int firstRow,int endRow) {
			System.out.println("===> Mybatis getQnAList() 호출");
			HashMap m=new HashMap();
			System.out.println(firstRow +  "Hello");
			
			m.put("first",firstRow);
			m.put("end", endRow);
			return mybatis.selectList("QnA.getQnAList",m );
		}
		@Override
		public int getTotalCount() {
			System.out.println("===> QnA getTotalCount 호출");
			return mybatis.selectOne("QnA.getTotalCount");
		}

		@Override
		public int selectUserMarket(String userName) {
			HashMap m=new HashMap();
			m.put("userName", userName);
			//시장 아이디 일경우에는  return 값이 있지만 시장이 아닌 사용자일 경우는 정해진 시장 id가 없기에 null값이다. 
			//null 값일 경우 0으로 return int형은 null return 이 존재하지 않는다.
			if (mybatis.selectOne("QnA.selectUserMarket",m) == null) {
				return 0;
			}
			return mybatis.selectOne("QnA.selectUserMarket",m) ;
		}
		//답변 등록
		@Override
		public void updateQA(QnaVO vo) {
			mybatis.update("QnA.updateQA",vo);
		}

	}

