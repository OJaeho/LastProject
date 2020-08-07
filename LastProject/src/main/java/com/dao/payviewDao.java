package com.dao;

import java.util.List;

import com.vo.PayVO;

public interface payviewDao {

	public List<PayVO> getorderitem(PayVO pvo);

	public List<PayVO> getorderuser(PayVO pvo);

	public int getorderprice(PayVO pvo) ;
}
 