package com.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daoImpl.productDaoImpl;
import com.service.productService;
import com.vo.BuyVO;
import com.vo.CategoryVO;
import com.vo.MarketVO;
import com.vo.ProductVO;
import com.vo.ReviewVO;
import com.vo.StoreVO;

@Service("productService")
public class productServiceImpl implements productService {

	@Autowired
	private productDaoImpl productDao;

	// 상품 정보 가져오기
	@Override
	public List<ProductVO> SelectProduct(ProductVO vo) {
		System.out.println("service select");
		return productDao.SelectProduct(vo);
	}

	// 높은 가격 순 상품 가져오기
	public List<ProductVO> HighItem(ProductVO vo) {
		System.out.println("service highitem");
		return productDao.HighItem(vo);
	}

	// 낮은 가격 순 상품 가져오기
	public List<ProductVO> LowItem(ProductVO vo) {
		System.out.println("service LowItem");
		return productDao.LowItem(vo);
	}

	// 상품 검색하기
	@Override
	public List<ProductVO> SearchProduct(ProductVO vo) {
		System.out.println("service product search");
		return productDao.SearchProduct(vo);
	}

	// 카테고리 정보 가져오기
	@Override
	public List<CategoryVO> StoreCategory() {
		System.out.println("service getcategory");
		return productDao.StoreCategory();
	}

	// 상품 카테고리별로 분류
	@Override
	public List<ProductVO> SearchCategory(CategoryVO cvo) {
		System.out.println("service category search");
		return productDao.SearchCategory(cvo);
	}

	// 점포 카테고리별로 분류
	@Override
	public List<StoreVO> SearchCategory_store(CategoryVO cvo) {
		System.out.println("service category search");
		return productDao.SearchCategory_store(cvo);
	}

	// 선택된 상품 정보 가져오기
	@Override
	public List<ProductVO> ProductInfo(ProductVO vo) {
		System.out.println("service ProductInfo");
		return productDao.ProductInfo(vo);
	}

	// 선택된 상품 옵션 가져오기
	@Override
	public List<ProductVO> ProductOption(ProductVO vo) {
		System.out.println("service ProductOption");
		return productDao.ProductOption(vo);
	}

	// 선택된 점포 정보 가져오기
	@Override
	public List<StoreVO> StoreInfo(StoreVO vo) {
		System.out.println("service storeinfo");
		return productDao.StoreInfo(vo);
	}

	// 리뷰 정보 넣기
	@Override
	public void InsertReview(ReviewVO rvo) {
		System.out.println("service InsertReview");
		productDao.InsertReview(rvo);
	}

	// 리뷰 가져오기
	@Override
	public List<ReviewVO> SelectReview(ProductVO rvo) {
		System.out.println("service SelectReview");
		return productDao.SelectReview(rvo);
	}

	// 리뷰 카운트 제한
	@Override
	public int getReviewCnt(ReviewVO vo) {
		System.out.println("service SelectRgetReviewCnteview");
		return productDao.getReviewCnt(vo);
	}

	// 상점 등록하기
	@Override
	public void InsertStore(StoreVO svo) {
		System.out.println("service InsertStore");
		productDao.InsertStore(svo);
	}

	// 상품 등록하기
	@Override
	public void InsertProduct(ProductVO pvo) {
		System.out.println("service InsertProduct");
		productDao.InsertProduct(pvo);
	}

	// 상점 등록페이지 - 카테고리이름 가져오기
	@Override
	public List<CategoryVO> SelectMarket(CategoryVO cvo) {
		System.out.println("service SelectMarket");
		return productDao.SelectMarket(cvo);
	}

	// 카테고리이름 통해 카테고리id찾기
	@Override
	public int findcid(String cName) {
		System.out.println("service findcid");
		return productDao.findcid(cName);
	}

	// 상점이름 통해 상점id찾기
	@Override
	public int findsid(String sName) {
		System.out.println("service findsid");
		return productDao.findsid(sName);
	}
	
	// 장바구니 배너
	@Override
	public List<HashMap<String, Object>> selectcart(BuyVO bvo) {
		System.out.println("service selectcart");
		return productDao.selectcart(bvo);
	}

	@Override
	   public String selectedstore(String username) {
	      return productDao.selectedstore(username);
	   }
}
