<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>

<title>Market3 :: 주문/결제</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="./resources/css/market.css" />
<!--===============================================================================================-->
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="./resources/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="./resources/css/util.css">
<link rel="stylesheet" type="text/css" href="./resources/css/main.css">
<link rel="stylesheet" type="text/css" href="./resources/css/areum.css">
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<!--===============================================================================================-->

</head>
<body class="animsition">

	<!-- Header -->
	<jsp:include page="/WEB-INF/views/market/header.jsp" />

	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92"
		style="background-image: url('images/bg-01.jpg');">
		<h1 class="tour-title theme_color type_block">
			<span class="notice_title_bullet them_background">결제   /  주문정보</span>
			<!--       이미지나 제목이 있어야 헤더에 안가려짐!       -->
		</h1>
	</section>
	<!-- Content page -->
	<section class="bg0 p-t-75 p-b-120">
		<div class="container">
			<div class="row p-b-148">
				<div class="col-md-12 col-lg-12">
					<div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md">
						<!-- middle title
                  필요없으면 h3 tag 삭제하셔도 무관 -->
						<h3 class="cl2 p-b-16 theme_color"
							style="font-size: 20px; font-weight: bold;">주문/결제</h3>
						<!-- order Content -->
						<div style="position: relative; border: 1px solid #e3e4e5;">
							<div
								style="position: relative; border: 1px solid #fff; border-top: 0; border-bottom: 0;">
								<span
									style="position: absolute; top: 0; left: -1px; width: 1098px; height: 4px; background-position: -1px 0;"></span>
								<table style="width: 100%; border: 0; text-align: center;">
									<thead>
										<tr>
											<th scope="col"><h4>상품정보</h4></th>
											<th scope="col"><h4>판매 점포</h4></th>
											<th scope="col"><h4>수량</h4></th>
											<th scope="col"><h4>소계</h4></th>
											<th scope="col"><h4>주문 방법</h4></th>
										</tr>
									</thead>
										<tbody>
											<c:forEach items="${result}" var="list">
												<tr>
													<td><span
														style="position: absolute; width: 1000px; height: 1px; top: 0; left: 50px; background-color: #f0f0f0;"></span>
														<div class="상품정보">
															<a href="product-detail.user?pName=${list.payTitle}&pPrice=${list.payPrice}"><img src="${list.payImg}" style="width: 150px; height: 150px;">
															<input type="text" class="ptitle" id="ptitle" value="${list.payTitle}">
															<input type="hidden" class="pid" value="${list.pId}"></a>
															<input type="hidden" value="${list.payContent}" class="pContent">
															<input type="hidden" value="${list.bId}" class="payBid">
														</div></td>
													<td rowspan="1"><a href="#"><input type="text" class="payStoreName" id="paysName" value="${list.payStoreName}"></a> <!-- 판매자 정보 삽입 url 연결 필요없으면 span이나 p로 변경해서 텍스트만 삽입 --></a>
													</td>
													<td><input type="text" class="count" value="${list.payCount}"/></td>
													<td rowspan="1"><input type="text" value="${list.payTotal}" class="sm_total"></td>
													<td><input type="text" class="paystate" value="${list.payState}"/></td>
												</tr>
											</c:forEach>
										</tbody>
								</table>
							</div>

							<!-- 배송 정보 Content -->
							<div>
								<div>
									<div>
										<div style="margin-top: 20px;">
											<h4>주문자 정보</h4>
											<strong style="float: left; margin: 0 18px 0 -10px; padding: 5px 0 0 10px; width: 100px; line-height: 20px; color: #4b4b4b;">이름</strong> 
											<input type="text" value="${name}" id = "cc" style="border: 1px solid;"/>
											<strong style="float: left; margin: 0 18px 0 -10px; padding: 5px 0 0 10px; width: 100px; line-height: 20px; color: #4b4b4b;">주소</strong>
											<input type="text" value="${addr}" id="aa" style="border: 1px solid;"/>
											<strong style="float: left; margin: 0 18px 0 -10px; padding: 5px 0 0 10px; width: 100px; line-height: 20px; color: #4b4b4b;">Tel</strong>
											<input type="text" value="${tel}" id="bb"/>
											<strong style="float: left; margin: 0 18px 0 -10px; padding: 5px 0 0 10px; width: 100px; line-height: 20px; color: #4b4b4b;">주문자 정보로 배송하기</strong>
											<input type="checkbox" id="infomation">
										</div>
										<div>
											<h4>받는이 정보</h4>
											<strong style="float: left; margin: 0 18px 0 -10px; padding: 5px 0 0 10px; width: 100px; line-height: 20px; color: #4b4b4b;">이름</strong>
											<input type="text" style="border: 1px solid;" id="name1"/>
											<strong style="float: left; margin: 0 18px 0 -10px; padding: 5px 0 0 10px; width: 100px; line-height: 20px; color: #4b4b4b;">주소</strong> 
											<input type="text" style="border: 1px solid;" id="addr1"/>
											<strong style="float: left; margin: 0 18px 0 -10px; padding: 5px 0 0 10px; width: 100px; line-height: 20px; color: #4b4b4b;">전화번호</strong>
											<input type="text" style="border: 1px solid;" id="tel1"/><input class="btn btn-addr" id="findpostcode1" type="button" value="우편번호 검색">
										</div>
										<div style="margin-top: 20px;">
											<h4>총 합계</h4>
											<strong style="float: left; margin: 0 18px 0 -10px; padding: 5px 0 0 10px; width: 100px; line-height: 20px; color: #4b4b4b;">총합계</strong> 
											<input type="text" value="${pTotal}"style="border: 1px solid;" id="payMentTotal"/>
											<h4>보유 포인트</h4>
											<input type="text" value="${userPoint}"style="border: 1px solid;" id="payUserPoint"/>
											<h4>결제하실 금액</h4>
											<input type="text" value="${userPoint-pTotal}"style="border: 1px solid;" id="resultPay"/>
											<div id="ride">
											</div>
										</div>
									</div>
								</div>
							</div>
							<form action="payComplate.user" id="frmpay">
								<!--상품 주문방식 -->
								<input type="hidden" name="payState1" id="payState1"/>
								<!--상품ID -->
								<input type="hidden" name="paypId1" id="paypId1"/>
								<!--상품 개별수량 -->
								<input type="hidden" name="payCount1" id="payCount1" />
								<!--주문자 이름 -->
								<input type="hidden" name="payUserName1" id="payUserName1"/>
								<!--주문자 전화번호 -->
								<input type="hidden" name="payUserTel1" id="payUserTel1" />
								<!--배송지 주소 -->
								<input type="hidden" name="payUserAddr1" id="payUserAddr1"/>
								<!-- 상품 소계(상품개별수량*상품가격)  -->
								<input type="hidden" name="payTotal1" id="payTotal1"/>
								<!-- 판매 점포 이름-->
								<input type="hidden" name="paystorename1" id="paystorename1"/>
								<!--상품이름 -->
								<input type="hidden" name="paytitle1" id="paytitle1"/>
								<!-- 상품이름+옵션 -->
								<input type="hidden" name="payPcontent" id="payContent"/>
								<!-- BID -->
								<input type="hidden" name="payBid" id="payBid"/>
								<input type="submit" id="test" value="결제하기" style="width: 198px; height: 56px;">
							</form>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="/WEB-INF/views/market/footer.jsp" />

	<!--===============================================================================================-->
	<script src="./resources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/bootstrap/js/popper.js"></script>
	<script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="./resources/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/slick/slick.min.js"></script>
	<script src="./resources/js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/parallax100/parallax100.js"></script>
	<script>
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script
		src="./resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
				delegate : 'a', // the selector for gallery item
				type : 'image',
				gallery : {
					enabled : true
				},
				mainClass : 'mfp-fade'
			});
		});
	</script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e) {
			e.preventDefault();
		});

		$('.js-addwish-b2').each(
				function() {
					var nameProduct = $(this).parent().parent().find(
							'.js-name-b2').html();
					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-b2');
						$(this).off('click');
					});
				});

		$('.js-addwish-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent().find(
							'.js-name-detail').html();

					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-detail');
						$(this).off('click');
					});
				});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent()
							.parent().find('.js-name-detail').html();
					$(this).on('click', function() {
						swal(nameProduct, "is added to cart !", "success");
					});
				});
	</script>
	<!--===============================================================================================-->
	<script
		src="./resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed : 1,
				scrollingThreshold : 1000,
				wheelPropagation : false,
			});

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="./resources/js/main.js"></script>
	<script src="./resources/js/jh.js"></script>
   	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</body>
</html>