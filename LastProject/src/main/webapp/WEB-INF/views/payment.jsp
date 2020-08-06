<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>

<title>Market 3</title>
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
	<!-- Content page -->
	<section class="bg0 p-t-75 p-b-120">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9 p-b-80" style="margin: 0 auto;">
					<div class="p-r-0-lg">
						<h2 style="margin-top: 40px;"
							class="cl2 p-b-20 theme_color cart-main-font cart-title-border">ORDER FORM</h2>
							
						<!-- order Content -->
						<div id="orderForm" class="boardList xans-order-form">
							<table class="table-cart-01">
								<thead>
									<tr>
										<th scope="col" class="table_cell">상품정보</th>
										<th scope="col" class="table_cell">판매 점포</th>
										<th scope="col" class="table_cell">수량</th>
										<th scope="col" class="table_cell">소계</th>
										<th scope="col" class="table_cell">주문 방법</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${result}" var="list">
										<tr class="table_row">
											<td class="cart_table_line-02" style="padding: 0;">
												<div class="product_desc_wrap--pGO3mDnHCR">
													<div class="product_description--aMGcm-GMeU" id="cart-name">
														<span class="product_thumb--39N9M1GjTm"> 
															<img src="${list.payImg}" class="product_img--mmk3PpY1tk">
														</span>
														<a href="product-detail.user?pName=${list.payTitle}&pPrice=${list.payPrice}">
														</a>
															<input type="hidden" class="ptitle" value="${list.payTitle}">
															<input type="hidden" class="pid" value="${list.pId}">
															<input type="hidden" value="${list.payContent}" class="pContent">
															<input type="hidden" value="${list.bId}" class="payBid">
													</div>
												</div>
											</td>
											<td class="cart_table_line-01" style="padding: 0;">
												<div class="product_item_wrap">
													<div class="product_item--price">
														<a href="#"><span class="payStoreName">${list.payStoreName}</span>></a>
													</div>
												</div>
											</td>
											<td class="cart_table_line-01" style="padding: 0;">
												<div class="product_item_wrap">
													<div class="product_item--price"><span class="count">${list.payCount}</span></div>
												</div>
											</td>
											<td class="cart_table_line-01" style="padding: 0;">
												<div class="product_item_wrap">
												<fmt:formatNumber value="${list.payTotal}" type="number" var="payTotal"/>
													<div class="product_item--price"><span class="sm_total">${list.payTotal}</span></div>
												</div>
											</td>
											<td class="cart_table_line-01" style="padding: 0;">
												<div class="product_item_wrap">
													<div class="product_item--price"><span class="paystate">${list.payState}</span></div>
												</div>
											</td>
										</tr>
											</c:forEach>
										</tbody>
								</table>

							<!-- Content -->
							<!-- 주문자 정보 -->
							<div class="orderArea">
								<div class="title">
									<h3 class="order-title">주문자 정보</h3>
								</div>
								<div class="boardWrite">
									<table style="margin: 0 auto; width: 100%;">
										<caption>주문 정보 입력</caption>
										<colgroup>
											<col style="width: 139px;">
											<col style="width: auto;">
										</colgroup>
									<tbody>
										<tr>
											<th scope="row">주문자 성함</th>
											<td>
											<input type="text" value="${name}" id="cc" style="border: 1px solid #eee;
																							  font-size: 15px;
																							  border-radius: 2px;
																							  padding: 5px;"/>
											</td>
										</tr>
										<tr>
											<th scope="row">주소</th>
											<td>
											<input type="text" value="${addr}" id="aa"
											class="inputTypeText" placeholder="" size="40"
											style="border: 1px solid #eee;
													font-size: 15px;
													border-radius: 2px;
													padding: 5px;"/>
											</td>
										</tr>
										<tr>
											<th scope="row">연락처</th>
											<td>
											<input type="text" style="border: 1px solid #eee;
																font-size: 15px;
																border-radius: 2px;
																padding: 5px;" value="${tel}" id="bb"/>
											</td>
										</tr>
										<tr>
											<th scope="row" style="border-bottom: 1px solid #ccc;">주문자 정보로 배송</th>
											<td style="border-bottom: 1px solid #ccc;">
											<input type="checkbox" style="border: 1px solid #eee;
																		 font-size: 15px;
																		 border-radius: 2px;
																		 padding: 5px;" id="infomation">
											</td>
										</tr>
									</tbody>
									</table>
								</div>
							</div>
							<!-- 배송 정보 -->
							<div id="orderArea">
								<div class="title">
									<h3 class="order-title">배송 정보</h3>
								</div>
								<div class="boardWrite">
									<table style="margin: 0 auto; width: 100%;">
										<caption>배송 정보 입력</caption>
										<colgroup>
											<col style="width: 139px;">
											<col style="width: auto;">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">받으시는 분</th>
												<td>
												<input type="text" style="border: 1px solid #eee;
																		font-size: 15px;
																		border-radius: 2px;
																		padding: 5px;" id="name1"/>
												</td>
											</tr>
											<tr>
												<th scope="row">주소</th>
												<td>
												<input type="text" style="border: 1px solid #eee;
																	font-size: 15px;
																	border-radius: 2px;
																	padding: 5px;" id="addr1" class="inputTypeText" 
																	placeholder="상세 주소까지 기입" size="40" id="addr1" />
												<input class="btn btn-addr" id="findpostcode1" type="button" value="우편번호">
												</td>
											</tr>
											<tr>
												<th scope="row" style="border-bottom: 1px solid #ccc;">연락처</th>
												<td style="border-bottom: 1px solid #ccc;">
												<input type="text" style="border: 1px solid #eee;
																		font-size: 15px;
																		border-radius: 2px;
																		padding: 5px;" id="tel1" placeholder=" '-' 제외"/>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- 결제 예정 금액 -->
							<div class="title">
								<h3>결제 예정 금액</h3>
							</div>
							<div class="totalArea">
								<div class="">
									<table style="margin: 0 auto; width: 100%;">
										<thead style="background: #f7f7f7;">
										<tr>
											<th scope="col"
											style="text-align: center;
													padding: 20px">
											<strong>보유 포인트</strong>
											</th>
											<th scope="col"
											style="text-align: center;
													padding: 20px">
											<strong>총 주문 금액</strong>
											</th>
										</tr>
										</thead>
										<tbody class="text-center">
											<tr>
												<td class=""
													style="text-align: center;
															padding: 30px;
															border-bottom: 1px solid #eee">
												<fmt:formatNumber value="${userPoint}" type="number" var="Pointuser"/>
												${Pointuser}
												</td>
												<td class=""
													style="text-align: center;
															padding: 30px;
															border-bottom: 1px solid #eee">
												<fmt:formatNumber value="${pTotal}" type="number" var="Totalpay"/>
												${Totalpay}원
												</td>
											</tr>										
										</tbody>
									</table>
								</div>
							</div>
						</div>
							
                     <form action="payComplate.user" id="frmpay" style="padding: 1rem; float: right;">
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
                        <input type="submit" id="test" value="결제하기" class="join-btn flex-c-m cl0 size-121 bg3 p-lr-15 trans-04 pointer">
                     </form>   

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