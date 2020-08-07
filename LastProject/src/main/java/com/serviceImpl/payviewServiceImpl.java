package com.serviceImpl;

import java.util.List;

import javax.management.RuntimeErrorException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import com.dao.payDao;
import com.dao.payviewDao;
import com.daoImpl.payviewDaoImpl;
import com.service.payviewService;
import com.vo.PayVO;
@Service("payviewService")
public class payviewServiceImpl implements payviewService {
	//장바구니페이지 > 결제 버튼 > 화면전환
	
	@Autowired
	private payviewDaoImpl payviewdao;
	
	@Override
	public List<PayVO> getorderitem(PayVO pvo) {
		// TODO Auto-generated method stub
		return payviewdao.getorderitem(pvo);
	}

	@Override
	public List<PayVO> getorderuser(PayVO pvo) {
		// TODO Auto-generated method stub
		return payviewdao.getorderuser(pvo);
	}

	@Override
	public int getorderprice(PayVO pvo) {
		// TODO Auto-generated method stub
		return payviewdao.getorderprice(pvo);
	}

	
	
	
} 
 