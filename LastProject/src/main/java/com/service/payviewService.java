package com.service;

import java.util.List;

import com.vo.PayVO;

public interface payviewService {

	public List<PayVO> getorderitem(PayVO pvo);

	public List<PayVO> getorderuser(PayVO pvo);

	public int getorderprice(PayVO pvo);
}
 