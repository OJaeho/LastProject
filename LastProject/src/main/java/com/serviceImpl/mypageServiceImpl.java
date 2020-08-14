<<<<<<< HEAD
package com.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.mypageDao;
import com.daoImpl.productDaoImpl;
import com.service.mypageService;
import com.vo.ChartVO;
import com.vo.MarketVO;
import com.vo.MypageVO;
import com.vo.PayVO;
import com.vo.ProductVO;
import com.vo.ReviewVO;
import com.vo.StoreVO;
import com.vo.UsersVO;

@Service("mypageService")
public class mypageServiceImpl implements mypageService {
	private int totalRecCount; // 전체 레코드 수
	private int pageTotalCount; // 전체 페이지 수
	private int countPerPage = 10; // 한페이지당 레코드 수

	@Autowired
	mypageDao mypageDao;

	@Autowired
	productDaoImpl productDao;
	
	@Override
	public JSONObject payList(String id, MypageVO vo) {
		List<HashMap<Object,Object>> items = mypageDao.getPayList(id, vo);
		JSONObject all = new JSONObject();
		// 리턴할 json 객체
		JSONArray data = new JSONArray(); // {}
		for (HashMap total : items) {
			JSONObject imsi = new JSONObject();
			//리뷰 갯수 확인
			ReviewVO rvo= new ReviewVO();
			rvo.setPayId(Integer.parseInt(String.valueOf(total.get("PAYID"))));
			int reviewCount=productDao.getReviewCnt(rvo);
			System.out.println(reviewCount+" : 리리뷰갯수");
			imsi.put("reviewCnt", reviewCount);
			imsi.put("NO", total.get("NO"));
			imsi.put("SNAME", total.get("SNAME"));
			imsi.put("PAYSTATE", total.get("PAYSTATE"));
			imsi.put("PAYDATE", total.get("PAYDATE"));
			imsi.put("PAYCONTENT", total.get("PAYCONTENT"));
			imsi.put("PNAME", total.get("PNAME"));
			imsi.put("PPRICE", total.get("PPRICE"));
			imsi.put("PAYID", total.get("PAYID"));
			imsi.put("PAYTYPE", total.get("PAYTYPE"));
			imsi.put("PID", total.get("PID"));
			data.add(imsi);
		}
		all.put("data", data);
		return all;
	}

	@Override
	public int getTotalCount(HashMap map) {
		totalRecCount = mypageDao.getTotalCount(map);
		pageTotalCount = totalRecCount / countPerPage;
		if (totalRecCount % countPerPage > 0)
			pageTotalCount++;
		return pageTotalCount;
	}

	@Override
	public List<HashMap<String, Object>> reviewList(String pNum, String id) {
		int pageNum = 1;
		if (pNum != null)
			pageNum = Integer.parseInt(pNum);

		int firstRow = (pageNum - 1) * countPerPage + 1;
		int endRow = pageNum * countPerPage;

		// 페이지 당 검색해 온 레코드를 return
		return mypageDao.getReviewList(firstRow, endRow, id);
	}

	@Override
	public int deleteReview(ReviewVO rvo) {
		return mypageDao.deleteReview(rvo);
	}

	// user 별 만히 시킨 음식 랭킹
	@Override
	public JSONObject userFoodRank(String id) {
		// getChartData메소드를 호출하면
		// db에서 리스트 받아오고, 받아온걸로 json형식으로 만들어서 리턴을 해주게 된다.
		List<ChartVO> items = mypageDao.userFoodRank(id);

		// 리턴할 json 객체
		JSONObject data = new JSONObject(); // {}

		// json의 칼럼 객체
		JSONObject col1 = new JSONObject();
		JSONObject col2 = new JSONObject();

		// json 배열 객체, 배열에 저장할때는 JSONArray()를 사용
		JSONArray title = new JSONArray();
		col1.put("label", "상품명"); // col1에 자료를 저장 ("필드이름","자료형")
		col1.put("type", "string");
		col2.put("label", "구매 횟수");
		col2.put("type", "number");

		// 테이블행에 컬럼 추가
		title.add(col1);
		title.add(col2);

		// json 객체에 타이틀행 추가
		data.put("cols", title);// 제이슨을 넘김
		// 이런형식으로 추가가된다. {"cols" : [{"label" : "상품명","type":"string"}
		// ,{"label" : "금액", "type" : "number"}]}
		JSONArray body = new JSONArray(); // json 배열을 사용하기 위해 객체를 생성
		for (ChartVO food : items) { // items에 저장된 값을 dto로 반복문을 돌려서 하나씩 저장한다.

			JSONObject pname = new JSONObject(); // json오브젝트 객체를 생성
			pname.put("v", food.getpName()); // name변수에 dto에 저장된 상품의 이름을 v라고 저장한다.

			JSONObject cntuser = new JSONObject(); // json오브젝트 객체를 생성
			cntuser.put("v", food.getCntUser()); // name변수에 dto에 저장된 금액을 v라고 저장한다.

			JSONArray row = new JSONArray(); // json 배열 객체 생성 (위에서 저장한 변수를 칼럼에 저장하기위해)
			row.add(pname); // name을 row에 저장 (테이블의 행)
			row.add(cntuser); // name을 row에 저장 (테이블의 행)

			JSONObject cell = new JSONObject();
			cell.put("c", row); // cell 2개를 합쳐서 "c"라는 이름으로 추가
			body.add(cell); // 레코드 1개 추가

		}
		data.put("rows", body); // data에 body를 저장하고 이름을 rows라고 한다.

		return data; // 이 데이터가 넘어가면 json형식으로 넘어가게되서 json이 만들어지게 된다.
	}

	// 월별 구매 금액
	@Override
	public JSONObject userMoneyChart(String id) throws Exception {
		List<ChartVO> items = mypageDao.userMoneyChart(id);

		// 리턴할 json 객체
		JSONObject data = new JSONObject(); // {}

		// json의 칼럼 객체
		JSONObject col1 = new JSONObject();
		JSONObject col2 = new JSONObject();

		// json 배열 객체, 배열에 저장할때는 JSONArray()를 사용
		JSONArray title = new JSONArray();
		col1.put("label", "날짜"); // col1에 자료를 저장 ("필드이름","자료형")
		col1.put("type", "string");
		col2.put("label", "월별지출액");
		col2.put("type", "number");

		// 테이블행에 컬럼 추가
		title.add(col1);
		title.add(col2);

		// json 객체에 타이틀행 추가
		data.put("cols", title);// 제이슨을 넘김
		// 이런형식으로 추가가된다. {"cols" : [{"label" : "상품명","type":"string"}
		// ,{"label" : "금액", "type" : "number"}]}
		JSONArray body = new JSONArray(); // json 배열을 사용하기 위해 객체를 생성
		for (ChartVO total : items) { // items에 저장된 값을 dto로 반복문을 돌려서 하나씩 저장한다.
			JSONObject term = new JSONObject(); // json오브젝트 객체를 생성
			term.put("v", total.getTerm()); // name변수에 dto에 저장된 상품의 이름을 v라고 저장한다.

			JSONObject sumtotal = new JSONObject(); // json오브젝트 객체를 생성
			sumtotal.put("v", total.getSumTotal()); // name변수에 dto에 저장된 금액을 v라고 저장한다.

			JSONArray row = new JSONArray(); // json 배열 객체 생성 (위에서 저장한 변수를 칼럼에 저장하기위해)
			row.add(term); // name을 row에 저장 (테이블의 행)
			row.add(sumtotal); // name을 row에 저장 (테이블의 행)

			JSONObject cell = new JSONObject();
			cell.put("c", row); // cell 2개를 합쳐서 "c"라는 이름으로 추가
			body.add(cell); // 레코드 1개 추가

		}
		data.put("rows", body); // data에 body를 저장하고 이름을 rows라고 한다.
		return data; // 이 데이터가 넘어가면 json형식으로 넘어가게되서 json이 만들어지게 된다.
	}

//------------------------------------------------seller
	// username으로 상점정보가져오기
	@Override
	public StoreVO getStoreById(String id) {
		return mypageDao.getStoreById(id);
	}

	// 품절된 목록 가져오기
	@Override
	public List<HashMap> getCntZeroProduct(String sId) {

		return mypageDao.getCntZeroProduct(sId);
	}

	// 무한 스크롤 productList 가져오기
	@Override
	public JSONObject getProductListTypeJson(String sId, String no) {
		List<ProductVO> items = mypageDao.productList(sId, no);
		JSONObject all = new JSONObject();
		// 리턴할 json 객체
		JSONArray data = new JSONArray(); // {}
		for (ProductVO total : items) {
			JSONObject imsi = new JSONObject();
			imsi.put("no", total.getNo());
			imsi.put("pId", total.getpId());
			imsi.put("pName", total.getpName());
			imsi.put("pCount", total.getpCount());
			imsi.put("pPrice", total.getpPrice());
			imsi.put("pOption1", total.getpOption1());
			data.add(imsi);
		}
		all.put("data", data);
		return all;
	}

	@Override
	public List<HashMap> getRecentOrderList(String sid) {
		return mypageDao.getRecentOrderList(sid);
	}

	//판매내역 준비중 아닌거
	@Override 
	public JSONObject getSaleListTypeJson(String sId, String no) {
		List<HashMap> items = mypageDao.getSaleListTypeJson(sId, no);
		JSONObject all = new JSONObject();
		// 리턴할 json 객체
		System.out.println(items.get(0).get("NO")+"HEllo");
		JSONArray data = new JSONArray(); // {}
		for (HashMap total : items) {
			JSONObject imsi = new JSONObject();
			imsi.put("NO", total.get("NO"));
			imsi.put("USERNAME", total.get("USERNAME"));
			imsi.put("PAYCONTENT", total.get("PAYCONTENT"));
			imsi.put("PAYCOUNT", total.get("PAYCOUNT"));
			imsi.put("PAYTOTAL", total.get("PAYTOTAL"));
			imsi.put("PAYSTATE", total.get("PAYSTATE"));
			imsi.put("PAYTYPE", total.get("PAYTYPE"));
			imsi.put("GROUPID", total.get("GROUPID"));
			imsi.put("PAYDATE", total.get("PAYDATE"));
			data.add(imsi);
		}
		all.put("data", data);
		return all;
	}
	//준비완료 버튼 눌렀을 시 준비중->준비완료
	@Override
	public int readyOrder(PayVO vo) {
		return mypageDao.readyOrder(vo);
	}
	//Market mypage ->>>>>>>>>>>>>>>>>>>>
	//id로 market 정보  가져오기
	@Override
	public MarketVO getMarketById(String id) {
		return mypageDao.getMarketById(id);
	}

	@Override
	public JSONObject getStoreListJson(String mkId, String no) throws Exception {
		List<HashMap> items = mypageDao.getStoreListJson(mkId,no);
		JSONObject all = new JSONObject();
		// 리턴할 json 객체
		System.out.println(items.get(0).get("NO")+"HEllo");
		JSONArray data = new JSONArray(); // {}
		for (HashMap total : items) {
			JSONObject imsi = new JSONObject();
			imsi.put("NO", total.get("NO"));
			imsi.put("SID", total.get("SID"));
			imsi.put("SNAME", total.get("SNAME"));
			imsi.put("SADDR", total.get("SADDR"));
			imsi.put("STEL", total.get("STEL"));
			imsi.put("STIME", total.get("STIME"));
			imsi.put("SPOINT", total.get("SPOINT"));
			
			data.add(imsi);
		}
		all.put("data", data);
		return all;
	}

	@Override
	public HashMap getStoreMemberbyId(String id) {
		return mypageDao.getStoreMemberbyId(id);
	}

	@Override
	public int sellerProfileUpdate(StoreVO svo, UsersVO uvo) {
		return mypageDao.sellerProfileUpdate(svo,uvo);
	}

	@Override
	public void updatePro(ProductVO vo) {
		mypageDao.updatePro(vo);		
	}

	@Override
	public ProductVO getProductById(String pId) {
		
		return mypageDao.getProductById(pId);
	}

}
=======
package com.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.mypageDao;
import com.daoImpl.productDaoImpl;
import com.service.mypageService;
import com.vo.ChartVO;
import com.vo.MarketVO;
import com.vo.MypageVO;
import com.vo.PayVO;
import com.vo.ProductVO;
import com.vo.ReviewVO;
import com.vo.StoreVO;
import com.vo.UsersVO;

@Service("mypageService")
public class mypageServiceImpl implements mypageService {
	private int totalRecCount; // 전체 레코드 수
	private int pageTotalCount; // 전체 페이지 수
	private int countPerPage = 10; // 한페이지당 레코드 수

	@Autowired
	mypageDao mypageDao;

	@Autowired
	productDaoImpl productDao;
	
	@Override
	public JSONObject payList(String id, MypageVO vo) {
		List<HashMap<Object,Object>> items = mypageDao.getPayList(id, vo);
		JSONObject all = new JSONObject();
		// 리턴할 json 객체
		JSONArray data = new JSONArray(); // {}
		for (HashMap total : items) {
			JSONObject imsi = new JSONObject();
			//리뷰 갯수 확인
			ReviewVO rvo= new ReviewVO();
			rvo.setPayId(Integer.parseInt(String.valueOf(total.get("PAYID"))));
			int reviewCount=productDao.getReviewCnt(rvo);
			System.out.println(reviewCount+" : 리리뷰갯수");
			imsi.put("reviewCnt", reviewCount);
			imsi.put("NO", total.get("NO"));
			imsi.put("SNAME", total.get("SNAME"));
			imsi.put("PAYSTATE", total.get("PAYSTATE"));
			imsi.put("PAYDATE", total.get("PAYDATE"));
			imsi.put("PAYCONTENT", total.get("PAYCONTENT"));
			imsi.put("PNAME", total.get("PNAME"));
			imsi.put("PPRICE", total.get("PPRICE"));
			imsi.put("PAYID", total.get("PAYID"));
			imsi.put("PAYTYPE", total.get("PAYTYPE"));
			imsi.put("PID", total.get("PID"));
			data.add(imsi);
		}
		all.put("data", data);
		return all;
	}

	@Override
	public int getTotalCount(HashMap map) {
		totalRecCount = mypageDao.getTotalCount(map);
		pageTotalCount = totalRecCount / countPerPage;
		if (totalRecCount % countPerPage > 0)
			pageTotalCount++;
		return pageTotalCount;
	}

	@Override
	public List<HashMap<String, Object>> reviewList(String pNum, String id) {
		int pageNum = 1;
		if (pNum != null)
			pageNum = Integer.parseInt(pNum);

		int firstRow = (pageNum - 1) * countPerPage + 1;
		int endRow = pageNum * countPerPage;

		// 페이지 당 검색해 온 레코드를 return
		return mypageDao.getReviewList(firstRow, endRow, id);
	}

	@Override
	public int deleteReview(ReviewVO rvo) {
		return mypageDao.deleteReview(rvo);
	}

	// user 별 만히 시킨 음식 랭킹
	@Override
	public JSONObject userFoodRank(String id) {
		// getChartData메소드를 호출하면
		// db에서 리스트 받아오고, 받아온걸로 json형식으로 만들어서 리턴을 해주게 된다.
		List<ChartVO> items = mypageDao.userFoodRank(id);

		// 리턴할 json 객체
		JSONObject data = new JSONObject(); // {}

		// json의 칼럼 객체
		JSONObject col1 = new JSONObject();
		JSONObject col2 = new JSONObject();

		// json 배열 객체, 배열에 저장할때는 JSONArray()를 사용
		JSONArray title = new JSONArray();
		col1.put("label", "상품명"); // col1에 자료를 저장 ("필드이름","자료형")
		col1.put("type", "string");
		col2.put("label", "구매 횟수");
		col2.put("type", "number");

		// 테이블행에 컬럼 추가
		title.add(col1);
		title.add(col2);

		// json 객체에 타이틀행 추가
		data.put("cols", title);// 제이슨을 넘김
		// 이런형식으로 추가가된다. {"cols" : [{"label" : "상품명","type":"string"}
		// ,{"label" : "금액", "type" : "number"}]}
		JSONArray body = new JSONArray(); // json 배열을 사용하기 위해 객체를 생성
		for (ChartVO food : items) { // items에 저장된 값을 dto로 반복문을 돌려서 하나씩 저장한다.

			JSONObject pname = new JSONObject(); // json오브젝트 객체를 생성
			pname.put("v", food.getpName()); // name변수에 dto에 저장된 상품의 이름을 v라고 저장한다.

			JSONObject cntuser = new JSONObject(); // json오브젝트 객체를 생성
			cntuser.put("v", food.getCntUser()); // name변수에 dto에 저장된 금액을 v라고 저장한다.

			JSONArray row = new JSONArray(); // json 배열 객체 생성 (위에서 저장한 변수를 칼럼에 저장하기위해)
			row.add(pname); // name을 row에 저장 (테이블의 행)
			row.add(cntuser); // name을 row에 저장 (테이블의 행)

			JSONObject cell = new JSONObject();
			cell.put("c", row); // cell 2개를 합쳐서 "c"라는 이름으로 추가
			body.add(cell); // 레코드 1개 추가

		}
		data.put("rows", body); // data에 body를 저장하고 이름을 rows라고 한다.

		return data; // 이 데이터가 넘어가면 json형식으로 넘어가게되서 json이 만들어지게 된다.
	}

	// 월별 구매 금액
	@Override
	public JSONObject userMoneyChart(String id) throws Exception {
		List<ChartVO> items = mypageDao.userMoneyChart(id);

		// 리턴할 json 객체
		JSONObject data = new JSONObject(); // {}

		// json의 칼럼 객체
		JSONObject col1 = new JSONObject();
		JSONObject col2 = new JSONObject();

		// json 배열 객체, 배열에 저장할때는 JSONArray()를 사용
		JSONArray title = new JSONArray();
		col1.put("label", "날짜"); // col1에 자료를 저장 ("필드이름","자료형")
		col1.put("type", "string");
		col2.put("label", "월별지출액");
		col2.put("type", "number");

		// 테이블행에 컬럼 추가
		title.add(col1);
		title.add(col2);

		// json 객체에 타이틀행 추가
		data.put("cols", title);// 제이슨을 넘김
		// 이런형식으로 추가가된다. {"cols" : [{"label" : "상품명","type":"string"}
		// ,{"label" : "금액", "type" : "number"}]}
		JSONArray body = new JSONArray(); // json 배열을 사용하기 위해 객체를 생성
		for (ChartVO total : items) { // items에 저장된 값을 dto로 반복문을 돌려서 하나씩 저장한다.
			JSONObject term = new JSONObject(); // json오브젝트 객체를 생성
			term.put("v", total.getTerm()); // name변수에 dto에 저장된 상품의 이름을 v라고 저장한다.

			JSONObject sumtotal = new JSONObject(); // json오브젝트 객체를 생성
			sumtotal.put("v", total.getSumTotal()); // name변수에 dto에 저장된 금액을 v라고 저장한다.

			JSONArray row = new JSONArray(); // json 배열 객체 생성 (위에서 저장한 변수를 칼럼에 저장하기위해)
			row.add(term); // name을 row에 저장 (테이블의 행)
			row.add(sumtotal); // name을 row에 저장 (테이블의 행)

			JSONObject cell = new JSONObject();
			cell.put("c", row); // cell 2개를 합쳐서 "c"라는 이름으로 추가
			body.add(cell); // 레코드 1개 추가

		}
		data.put("rows", body); // data에 body를 저장하고 이름을 rows라고 한다.
		return data; // 이 데이터가 넘어가면 json형식으로 넘어가게되서 json이 만들어지게 된다.
	}

//------------------------------------------------seller
	// username으로 상점정보가져오기
	@Override
	public StoreVO getStoreById(String id) {
		return mypageDao.getStoreById(id);
	}

	// 품절된 목록 가져오기
	@Override
	public List<HashMap> getCntZeroProduct(String sId) {

		return mypageDao.getCntZeroProduct(sId);
	}

	// 무한 스크롤 productList 가져오기
	@Override
	public JSONObject getProductListTypeJson(String sId, String no) {
		List<ProductVO> items = mypageDao.productList(sId, no);
		JSONObject all = new JSONObject();
		// 리턴할 json 객체
		JSONArray data = new JSONArray(); // {}
		for (ProductVO total : items) {
			JSONObject imsi = new JSONObject();
			imsi.put("no", total.getNo());
			imsi.put("pId", total.getpId());
			imsi.put("pName", total.getpName());
			imsi.put("pCount", total.getpCount());
			imsi.put("pPrice", total.getpPrice());
			imsi.put("pOption1", total.getpOption1());
			data.add(imsi);
		}
		all.put("data", data);
		return all;
	}

	@Override
	public List<HashMap> getRecentOrderList(String sid) {
		return mypageDao.getRecentOrderList(sid);
	}

	//판매내역 준비중 아닌거
	@Override 
	public JSONObject getSaleListTypeJson(String sId, String no) {
		List<HashMap> items = mypageDao.getSaleListTypeJson(sId, no);
		JSONObject all = new JSONObject();
		// 리턴할 json 객체
		System.out.println(items.get(0).get("NO")+"HEllo");
		JSONArray data = new JSONArray(); // {}
		for (HashMap total : items) {
			JSONObject imsi = new JSONObject();
			imsi.put("NO", total.get("NO"));
			imsi.put("USERNAME", total.get("USERNAME"));
			imsi.put("PAYCONTENT", total.get("PAYCONTENT"));
			imsi.put("PAYCOUNT", total.get("PAYCOUNT"));
			imsi.put("PAYTOTAL", total.get("PAYTOTAL"));
			imsi.put("PAYSTATE", total.get("PAYSTATE"));
			imsi.put("PAYTYPE", total.get("PAYTYPE"));
			imsi.put("GROUPID", total.get("GROUPID"));
			imsi.put("PAYDATE", total.get("PAYDATE"));
			data.add(imsi);
		}
		all.put("data", data);
		return all;
	}
	//준비완료 버튼 눌렀을 시 준비중->준비완료
	@Override
	public int readyOrder(PayVO vo) {
		return mypageDao.readyOrder(vo);
	}
	//Market mypage ->>>>>>>>>>>>>>>>>>>>
	//id로 market 정보  가져오기
	@Override
	public MarketVO getMarketById(String id) {
		return mypageDao.getMarketById(id);
	}

	@Override
	public JSONObject getStoreListJson(String mkId, String no) throws Exception {
		List<HashMap> items = mypageDao.getStoreListJson(mkId,no);
		JSONObject all = new JSONObject();
		// 리턴할 json 객체
		System.out.println(items.get(0).get("NO")+"HEllo");
		JSONArray data = new JSONArray(); // {}
		for (HashMap total : items) {
			JSONObject imsi = new JSONObject();
			imsi.put("NO", total.get("NO"));
			imsi.put("SID", total.get("SID"));
			imsi.put("SNAME", total.get("SNAME"));
			imsi.put("SADDR", total.get("SADDR"));
			imsi.put("STEL", total.get("STEL"));
			imsi.put("STIME", total.get("STIME"));
			imsi.put("SPOINT", total.get("SPOINT"));
			
			data.add(imsi);
		}
		all.put("data", data);
		return all;
	}

	@Override
	public HashMap getStoreMemberbyId(String id) {
		return mypageDao.getStoreMemberbyId(id);
	}

	@Override
	public int sellerProfileUpdate(StoreVO svo, UsersVO uvo) {
		return mypageDao.sellerProfileUpdate(svo,uvo);
	}

	@Override
	public void updatePro(ProductVO vo) {
		mypageDao.updatePro(vo);		
	}

	@Override
	public ProductVO getProductById(String pId) {
		
		return mypageDao.getProductById(pId);
	}

}
>>>>>>> branch 'master' of https://github.com/OJaeho/LastProject.git
