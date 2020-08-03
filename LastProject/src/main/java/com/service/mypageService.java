package com.service;

import java.util.HashMap;
import java.util.List;

import com.vo.BuyVO;

public interface mypageService {
	
	List<HashMap> payList(String pNum,String id); //구매목록
	//글 전체 갯수 가져오기
	int getTotalCount(HashMap map); //테이블의 전체 글 갯수 가져오기
}
