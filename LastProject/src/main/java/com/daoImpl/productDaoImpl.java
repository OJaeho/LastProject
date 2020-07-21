package com.daoImpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.productDao;
import com.vo.ProductVO;

@Repository("service")
public class productDaoImpl implements productDao{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<ProductVO> SelectProduct(ProductVO vo) {
		System.out.println("===> ProductMapper selectproduct �샇異�");
		return mybatis.selectList("product.selectProduct",vo);
	}
	
}
