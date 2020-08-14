<<<<<<< HEAD
package com.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.mypageDao;
import com.vo.ChartVO;
import com.vo.MarketVO;
import com.vo.MypageVO;
import com.vo.PayVO;
import com.vo.ProductVO;
import com.vo.ReviewVO;
import com.vo.StoreVO;
import com.vo.UsersVO;

@Repository("mypagedao")
public class mypageDaoImpl implements mypageDao {

   @Autowired
   private SqlSessionTemplate mybatis;

   @Override
   public List<HashMap<Object,Object>> getPayList(String id, MypageVO vo) {
      HashMap m = new HashMap();
      m.put("id", id);
      if (vo.getPayState() == null) {
         vo.setPayState("전체");
      }
      m.put("vo", vo);
      if (vo.getStart().equals("null")) {
    	  m.put("dating", "없음");
      }else {
    	  m.put("dating", "있음");
      }
      return mybatis.selectList("mypageMapper.selectPayList", m);
   }

   @Override
   public int getTotalCount(HashMap map) {
      if (map.get("vo") == null) {
         return mybatis.selectOne("mypageMapper.getBasicTotal", map);
      } else {
         return mybatis.selectOne("mypageMapper.getTotal", map);
      }
   }

   @Override
   public List<HashMap<String, Object>> getReviewList(int firstRow, int endRow, String id) {
      HashMap m = new HashMap();
      m.put("first", firstRow);
      m.put("end", endRow);
      m.put("id", id);

      return mybatis.selectList("mypageMapper.selectReviewList", m);
   }

   @Override
   public int deleteReview(ReviewVO rvo) {
      return mybatis.update("mypageMapper.deleteReview", rvo);
   }

   // user 별 만히 시킨 음식 랭킹
   @Override
   public List<ChartVO> userFoodRank(String id) {
      return mybatis.selectList("mypageMapper.foodRank", id);
   }

   @Override
   public List<ChartVO> userMoneyChart(String id) {
      return mybatis.selectList("mypageMapper.moneyChart", id);
   }

   @Override
   public StoreVO getStoreById(String id) {
      return mybatis.selectOne("mypageMapper.getStoreById", id);
   }


   @Override
   public ProductVO getProductById(String pId) {
	   
      return mybatis.selectOne("mypageMapper.productById",pId); 
   }
   @Override
   public int deleteProduct(String pId) {
      return mybatis.update("mypageMapper.deleteProduct",pId);
   }
//품절된 상품 리스트 
@Override
public List<HashMap> getCntZeroProduct(String sId) {
	return mybatis.selectList("mypageMapper.getCntZeroProduct",sId);
	
}

@Override
public List<ProductVO> productList(String sId, String no) {
	HashMap<String, String> m = new HashMap<String, String>();
	m.put("sId", sId);
	m.put("no", no);
	return mybatis.selectList("mypageMapper.getProduct",m);
}

@Override
public List<HashMap> getRecentOrderList(String sId) {
	
	return mybatis.selectList("mypageMapper.getRecentOrderList",sId);
}

@Override
public List<HashMap> getSaleListTypeJson(String sId, String no) {
	HashMap m = new HashMap();
	m.put("no",no);
	m.put("sId",sId);
	return mybatis.selectList("mypageMapper.getSaleList",m);
}

@Override
public int readyOrder(PayVO vo) {
	return mybatis.update("mypageMapper.readyOrder",vo) ;
}
//Market mypage
@Override
public MarketVO getMarketById(String id) {
	return mybatis.selectOne("mypageMapper.getMarketById",id);
}

@Override
public List<HashMap> getStoreListJson(String mkId, String no) {
	HashMap m = new HashMap();
	m.put("mkId",mkId);
	m.put("no",no);
	return mybatis.selectList("mypageMapper.StoreList",m);
}

@Override
public HashMap getStoreMemberbyId(String id) {
	return mybatis.selectOne("mypageMapper.getStoreMemberbyId",id);
}

@Override
public int sellerProfileUpdate(StoreVO svo, UsersVO uvo) {
	mybatis.update("mypageMapper.updateStore",svo);
	return mybatis.update("mypageMapper.updateUsers",uvo);
}

@Override
public void updatePro(ProductVO vo) {
	mybatis.update("mypageMapper.updateProduct", vo);
	
}

=======
package com.daoImpl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.mypageDao;
import com.vo.ChartVO;
import com.vo.MarketVO;
import com.vo.MypageVO;
import com.vo.PayVO;
import com.vo.ProductVO;
import com.vo.ReviewVO;
import com.vo.StoreVO;
import com.vo.UsersVO;

@Repository("mypagedao")
public class mypageDaoImpl implements mypageDao {

   @Autowired
   private SqlSessionTemplate mybatis;

   @Override
   public List<HashMap<Object,Object>> getPayList(String id, MypageVO vo) {
      HashMap m = new HashMap();
      m.put("id", id);
      if (vo.getPayState() == null) {
         vo.setPayState("전체");
      }
      m.put("vo", vo);
      if (vo.getStart().equals("null")) {
    	  m.put("dating", "없음");
      }else {
    	  m.put("dating", "있음");
      }
      return mybatis.selectList("mypageMapper.selectPayList", m);
   }

   @Override
   public int getTotalCount(HashMap map) {
      if (map.get("vo") == null) {
         return mybatis.selectOne("mypageMapper.getBasicTotal", map);
      } else {
         return mybatis.selectOne("mypageMapper.getTotal", map);
      }
   }

   @Override
   public List<HashMap<String, Object>> getReviewList(int firstRow, int endRow, String id) {
      HashMap m = new HashMap();
      m.put("first", firstRow);
      m.put("end", endRow);
      m.put("id", id);

      return mybatis.selectList("mypageMapper.selectReviewList", m);
   }

   @Override
   public int deleteReview(ReviewVO rvo) {
      return mybatis.update("mypageMapper.deleteReview", rvo);
   }

   // user 별 만히 시킨 음식 랭킹
   @Override
   public List<ChartVO> userFoodRank(String id) {
      return mybatis.selectList("mypageMapper.foodRank", id);
   }

   @Override
   public List<ChartVO> userMoneyChart(String id) {
      return mybatis.selectList("mypageMapper.moneyChart", id);
   }

   @Override
   public StoreVO getStoreById(String id) {
      return mybatis.selectOne("mypageMapper.getStoreById", id);
   }


   @Override
   public ProductVO getProductById(String pId) {
	   
      return mybatis.selectOne("mypageMapper.productById",pId); 
   }
   @Override
   public int deleteProduct(String pId) {
      return mybatis.update("mypageMapper.deleteProduct",pId);
   }
//품절된 상품 리스트 
@Override
public List<HashMap> getCntZeroProduct(String sId) {
	return mybatis.selectList("mypageMapper.getCntZeroProduct",sId);
	
}

@Override
public List<ProductVO> productList(String sId, String no) {
	HashMap<String, String> m = new HashMap<String, String>();
	m.put("sId", sId);
	m.put("no", no);
	return mybatis.selectList("mypageMapper.getProduct",m);
}

@Override
public List<HashMap> getRecentOrderList(String sId) {
	
	return mybatis.selectList("mypageMapper.getRecentOrderList",sId);
}

@Override
public List<HashMap> getSaleListTypeJson(String sId, String no) {
	HashMap m = new HashMap();
	m.put("no",no);
	m.put("sId",sId);
	return mybatis.selectList("mypageMapper.getSaleList",m);
}

@Override
public int readyOrder(PayVO vo) {
	return mybatis.update("mypageMapper.readyOrder",vo) ;
}
//Market mypage
@Override
public MarketVO getMarketById(String id) {
	return mybatis.selectOne("mypageMapper.getMarketById",id);
}

@Override
public List<HashMap> getStoreListJson(String mkId, String no) {
	HashMap m = new HashMap();
	m.put("mkId",mkId);
	m.put("no",no);
	return mybatis.selectList("mypageMapper.StoreList",m);
}

@Override
public HashMap getStoreMemberbyId(String id) {
	return mybatis.selectOne("mypageMapper.getStoreMemberbyId",id);
}

@Override
public int sellerProfileUpdate(StoreVO svo, UsersVO uvo) {
	mybatis.update("mypageMapper.updateStore",svo);
	return mybatis.update("mypageMapper.updateUsers",uvo);
}

@Override
public void updatePro(ProductVO vo) {
	mybatis.update("mypageMapper.updateProduct", vo);
	
}

>>>>>>> branch 'master' of https://github.com/OJaeho/LastProject.git
}