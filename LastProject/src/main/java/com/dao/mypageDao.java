package com.dao;

import java.util.HashMap;
import java.util.List;

import com.vo.BuyVO;

public interface mypageDao {
	
	List<HashMap> getPayList(int firstRow, int endRow,String id); //구매목록
	//글 전체 갯수 가져오기
	int getTotalCount(HashMap map); //테이블의 전체 글 갯수 가져오기
	
}
