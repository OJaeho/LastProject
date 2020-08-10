package com.controller;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.service.memberService;
import com.service.productService;
import com.vo.BuyVO;
import com.vo.CategoryVO;
import com.vo.ProductVO;
import com.vo.ReviewVO;
import com.vo.StoreVO;
import com.vo.UsersVO;

@Controller
public class productController {

	@Autowired
	private productService service;
	@Autowired
	private memberService maService;

	// 풋터 '전국시장' 셀렉트함수 호출
	@Autowired
	private marketController con;

	// 상품 리스트 가져오기
		@RequestMapping(value = "/getproduct.user")
		public String SelectProduct(ProductVO vo,BuyVO bvo, Model model,HttpSession session,HttpServletRequest req) {
			model.addAttribute("list", con.selectFooter());
			int mkId = (int) session.getAttribute("mkId");
			vo.setMkId(mkId);
			String username = req.getRemoteUser();
			bvo.setUserName(username);
			bvo.setMkId(mkId);
			List<ProductVO> product = service.SelectProduct(vo);
			List<CategoryVO> category = service.StoreCategory();
			List<HashMap<String, Object>> cart = service.selectcart(bvo);
			
			//for jang var=jang ====> ${jang.PIMG1 }
			//cart.get(cart.size()).get("PIMG1");
			
			// 카트 배너
			model.addAttribute("cartget", cart);
			// 카테고리 정보 가져오기
			model.addAttribute("categoryget", category);
			// 상품 정보 가져오기
			model.addAttribute("productget", product);
			return "product/getproduct";
		}

	// 상품 검색
	@RequestMapping(value = "/searchproduct.user")
	public String SearchProduct(ProductVO vo,BuyVO bvo, Model model,HttpSession session,HttpServletRequest req) {
		int mkId = (int) session.getAttribute("mkId");
		vo.setMkId(mkId);
		model.addAttribute("list", con.selectFooter());
		List<ProductVO> product = service.SearchProduct(vo);
		List<CategoryVO> category = service.StoreCategory();
		String username = req.getRemoteUser();
		bvo.setUserName(username);
		bvo.setMkId(mkId);
		List<HashMap<String, Object>> cart = service.selectcart(bvo);
		// 상품 정보 가져오기
		model.addAttribute("productget", product);
		// 카테고리 정보 가져오기
		model.addAttribute("categoryget", category);
		// 카트 배너
		model.addAttribute("cartget", cart);
		return "product/getproduct";
	}

	// 상품 가격 낮은순
	@RequestMapping(value = "/lowitem.user")
	public String lowitem(ProductVO vo,BuyVO bvo, Model model,HttpSession session,HttpServletRequest req) {
		int mkId = (int) session.getAttribute("mkId");
		vo.setMkId(mkId);
		model.addAttribute("list", con.selectFooter());
		List<ProductVO> product = service.LowItem(vo);
		List<CategoryVO> category = service.StoreCategory();
		String username = req.getRemoteUser();
		bvo.setUserName(username);
		bvo.setMkId(mkId);
		List<HashMap<String, Object>> cart = service.selectcart(bvo);
		// 상품 정보 가져오기
		model.addAttribute("productget", product);
		// 카테고리 정보 가져오기
		model.addAttribute("categoryget", category);
		// 카트 배너
		model.addAttribute("cartget", cart);
		return "product/getproduct";
	}

	// 상품 가격 높은순
	@RequestMapping(value = "/highitem.user")
	public String highitem(ProductVO vo,BuyVO bvo, Model model,HttpSession session,HttpServletRequest req) {
		int mkId = (int) session.getAttribute("mkId");
		vo.setMkId(mkId);
		model.addAttribute("list", con.selectFooter());
		List<ProductVO> product = service.HighItem(vo);
		List<CategoryVO> category = service.StoreCategory();
		String username = req.getRemoteUser();
		bvo.setUserName(username);
		bvo.setMkId(mkId);
		List<HashMap<String, Object>> cart = service.selectcart(bvo);
		// 상품 정보 가져오기
		model.addAttribute("productget", product);
		// 카테고리 정보 가져오기
		model.addAttribute("categoryget", category);
		// 카트 배너
		model.addAttribute("cartget", cart);
		return "product/getproduct";
	}

	// 상품 카테고리 통해 검색
	@RequestMapping(value = "/categoryitem.user")
	public String SearchCategory(CategoryVO cvo,BuyVO bvo, ProductVO vo, Model model,HttpSession session,HttpServletRequest req) {
		int mkId = (int) session.getAttribute("mkId");
		vo.setMkId(mkId);
		cvo.setMkId(mkId);
		model.addAttribute("list", con.selectFooter());
		List<ProductVO> product = service.SearchProduct(vo);
		List<CategoryVO> category = service.StoreCategory();
		List<ProductVO> cateitem = service.SearchCategory(cvo);
		String username = req.getRemoteUser();
		bvo.setUserName(username);
		bvo.setMkId(mkId);
		List<HashMap<String, Object>> cart = service.selectcart(bvo);
		// 상품 정보 가져오기
		model.addAttribute("productget", product);
		// 카테고리 정보 가져오기
		model.addAttribute("categoryget", category);
		// 카테고리 선택된 상품 정보 가져오기
		model.addAttribute("productget", cateitem);
		// 카트 배너
		model.addAttribute("cartget", cart);
		return "product/getproduct";
	}

	// 상품 디테일 페이지 이동
	@RequestMapping(value = "/product-detail.user")
	public String detailproduct(Model model, ProductVO vo, String payId, ReviewVO rvo,HttpSession session,HttpServletRequest request) {
		int mkId = (int) session.getAttribute("mkId");
		vo.setMkId(mkId);
		model.addAttribute("list", con.selectFooter());
		List<ProductVO> productinfo = service.ProductInfo(vo);
		List<ProductVO> productoption = service.ProductOption(vo);
		List<ReviewVO> review = service.SelectReview(vo);
		int getReviewCnt = service.getReviewCnt(rvo);
		
		model.addAttribute("getReviewCnt", getReviewCnt);
		model.addAttribute("productget", productinfo);
		model.addAttribute("optionget", productoption);
		model.addAttribute("reviewget", review);
		model.addAttribute("Id",request.getRemoteUser());
		if (payId != null) {
			model.addAttribute("payId", payId);
		} else {
			model.addAttribute("payId", "");
		}
		return "product/product-detail";
	}

	// 업종별 점포 목록 페이지
	@RequestMapping(value = "/storelist.user")
	public String store(StoreVO vo,Model model) {
		model.addAttribute("list", con.selectFooter());
		
		List<CategoryVO> category = service.StoreCategory();
		// 카테고리 정보 가져오기
		model.addAttribute("categoryget", category);
		return "store/storelist";
	}

	// 점포 디테일 페이지 이동
	@RequestMapping(value = "/store-detail.user")
	public String detailstore(String sName, Model model, StoreVO vo,HttpSession session) {
		model.addAttribute("list", con.selectFooter());
		int mkId = (int) session.getAttribute("mkId");
		vo.setMkId(mkId);
		List<StoreVO> storeinfo = service.StoreInfo(vo);
		model.addAttribute("storeget", storeinfo);
		return "store/store-detail";
	}

	// 점포리스트 페이지
	@RequestMapping(value = "/showstore.user")
	public String ShowStore(StoreVO vo,CategoryVO cvo, Model model,HttpSession session) {
		model.addAttribute("list", con.selectFooter());
		int mkId = (int) session.getAttribute("mkId");
		cvo.setMkId(mkId);
		 
		List<CategoryVO> category = service.StoreCategory();
		List<StoreVO> catestore = service.SearchCategory_store(cvo);
		// 카테고리 통해 검색된 점포 정보 가져오기
		model.addAttribute("storeget", catestore);
		// 카테고리 정보 가져오기
		model.addAttribute("categoryget", category);
		return "store/getstore";
	}

	// 리뷰 달기
	@RequestMapping(value = "/insertreview.user")
	public String InsertReview(ReviewVO rvo,ProductVO pvo, Model model,HttpSession session,HttpServletRequest request) throws Exception {
		model.addAttribute("list", con.selectFooter());
		int mkId = (int) session.getAttribute("mkId");
		rvo.setMkId(mkId);
		rvo.setUserName(request.getRemoteUser());//현재 로그인한 사람이 리뷰를 작성한것이니
		service.InsertReview(rvo);
//		String pName=URLEncoder.encode(pvo.getpName(), "UTF-8");//한글이어서 utf-8로 인코딩 필요
		return "redirect:/product-detail.user?pName="+URLEncoder.encode(pvo.getpName(), "UTF-8")+"&pPrice="+pvo.getpPrice()+"&pId="+pvo.getpId();
	}

	// 상점등록 페이지 이동
	@RequestMapping(value = "/insertstore.market", method = RequestMethod.GET)
	public String InsertStorepage(StoreVO vo,CategoryVO cvo, Model model,HttpSession session) {
		int mkId = (int) session.getAttribute("mkId");
		vo.setMkId(mkId);
		model.addAttribute("list", con.selectFooter());
		List<CategoryVO> category = service.SelectMarket(cvo);
		model.addAttribute("categoryget", category);
		return "store/insertstore";
	}

	// 상점 등록하기
	@RequestMapping(value = "/storeinsert.market", method = RequestMethod.GET)
	public String InsertStore(String cName,UsersVO uvo, StoreVO svo, Model model, HttpSession session) {
		model.addAttribute("list", con.selectFooter());
		int cId = service.findcid(cName);
		// 시장의 key값을 세션에서 가져옴
		int mkId = (int) session.getAttribute("mkId");
		maService.insertSeller(uvo);
		svo.setMkId(mkId);
		svo.setcId(cId);
		service.InsertStore(svo);
		return "redirect:/storelist.user";
	}


	// 상품등록 페이지 이동
	@RequestMapping(value = "/insertproduct.market", method = RequestMethod.GET)
	public String InsertProductpage(ProductVO vo,StoreVO svo, Model model,HttpSession session) {
		int mkId = (int) session.getAttribute("mkId");
		svo.setMkId(mkId);
		model.addAttribute("list", con.selectFooter());
		List<StoreVO> storeinfo = service.StoreInfo(svo);
		model.addAttribute("storeget", storeinfo);
		return "product/insertproduct";
	}

	// 상품 등록하기
	@RequestMapping(value = "/pInsert.seller", method = RequestMethod.GET)
	public String InsertProduct(String sName, @ModelAttribute ProductVO pvo, Model model, HttpSession session,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (pvo.getpOption1() != null && pvo.getPriceOption() != null) {
			model.addAttribute("list", con.selectFooter());

			int sId = service.findsid(sName);
			// 시장의 key값을 세션에서 가져옴
			int mkId = (int) session.getAttribute("mkId");
			pvo.setMkId(mkId);
			pvo.setsId(sId);

			StringTokenizer st = new StringTokenizer(pvo.getpOption1(), "/");
			StringTokenizer st2 = new StringTokenizer(pvo.getPriceOption(), "/");
			if (st.countTokens() == st2.countTokens()) {
				while (st.hasMoreTokens()) {
					pvo.setpOption1(st.nextToken());
					pvo.setpPrice(Integer.parseInt(st2.nextToken()));
					service.InsertProduct(pvo);
					
				} // while
				return "redirect:/getproduct.user";
			} // if
		}
		return "redirect:/insertproduct.market";
	}

	@ResponseBody // (****************비동기통신을 해주세요) AJAX통신을 하는애는 반드시 이 어노테이션이 있어야함
	@RequestMapping(value = "/optionCk.user", produces = "application/text; charset=utf8")
	public String OptionCheck(@ModelAttribute ProductVO pvo, Model model, HttpSession session,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		StringTokenizer st = new StringTokenizer(pvo.getpOption1(), "/");
		StringTokenizer st2 = new StringTokenizer(pvo.getPriceOption(), "/");
		String message = "가격과 옵션의 갯수가 일치 하지 않습니다.";
		if (st.countTokens() == st2.countTokens()) {
			message = "가격과 옵션의 갯수가 일치합니다.";
		}
		return message;
	}
}