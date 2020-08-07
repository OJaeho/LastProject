<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>사용자 마이페이지</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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

<!-- ---------------------------------------------------------------------------------------------------------------------------------- -->
<!-- Bootstrap -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!--===============================================================================================-->
<style type="text/css">
.pay-btn{
    display: inline;
    height: 40px;
    padding: 0 10px 0px 10px;
    font-size: 15px;
    letter-spacing: 1px;
    color: #fff;
    font-weight: bold;
    border: 1px solid #ddd0;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    background: #2ee27f;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    cursor: pointer;
}
</style>

</head>
<body class="animsition">

	<!-- Header -->
	<jsp:include page="/WEB-INF/views/market/header.jsp" />
<!-- Title page -->
   <section class="bg-img1 txt-center p-lr-15 p-t-92" style="background-image: url('images/bg-01.jpg');">
   	<h2 style="margin-top: 40px;"
	class="cl2 p-b-20 theme_color cart-main-font cart-title-border">ORDER LIST</h2>
   </section> 
<!-- header끝 -->
   <!-- Content page -->   
<div class="joinMain">
<div class="mArticle">
<!-- 			Tab Pane 시작 -->
			<div class="container">
							<div class="row">
								<ul class="nav nav-tabs" style="margin: 0 auto;">
									<li role="presentation" style="font-size: 15px;"
										class="navLi">
										<a href="PayList.user?">전체상품 보기</a>
									</li>
									<li role="presentation" style="font-size: 15px;"
										class="navLi"><a href="PayList.user?payState=픽업">픽업상품
											보기</a>
									</li>
									<li role="presentation" style="font-size: 15px;"
										class="navLi"><a href="PayList.user?payState=배송">배송상품
											보기</a>
									</li>
								</ul>
							</div>
						</div>
						<br/>
<!-- 						날짜 기준 -->
			<div style="margin: 0 auto; text-align: center;">
				<form action="PayList.user" id="payDateSearch" >
					<input type="hidden" name="payState" value=${payStateView }>
					<input type="date" id="starting" name="start" style='display: inline; border: 1px solid #ccc; border-radius: 2px;'>
					~
					<input type="date" id="ending" name="end"  style='display: inline; border: 1px solid #ccc; border-radius: 2px;'>
					<input type="button" id="dateSearch" value="OK" class="pay-btn">		
				</form>		
			</div>
						<hr/>
						
<!-- 		tab Pane 부분 끝	 -->
		<!--구매내역 본문 시작 -->
			<div class="Content ec-base-table container">
				<div style="position: relative;">
							<c:forEach items="${payList}" var="pays">
							<h4>${pays.SNAME } | ${pays.PAYSTATE }</h4>
							<h4>${pays.PAYTYPE }</h4>
							<span>${pays.PAYDATE}</span><br/>
							<span>${pays.PAYCONTENT}</span><br/>
							<input class="join-btn" type="button" value="리뷰쓰기" onClick="location.href='product-detail.user?pName=${pays.PNAME}&pPrice=${pays.PPRICE}&pId=${pays.PID}&payId=${pays.PAYID}'"  style='display:inline;' >
							<input class="join-btn" type="button" value="가게보기" onClick="location.href='#'"  style='display:inline;' >
							<hr/>
							</c:forEach>
				</div>
<!-- 				페이지 처리 -->
				<div class="text-center-page">
					<ul class="pagination div-center">
						<c:forEach var="i" begin="1" end="${totalpNum }">
							<li><a href="PayList.user?pNum=${i }&payState=${payStateView }&start=${param.start}&end=${param.end}">${i }</a></li>
						</c:forEach>
					</ul>
				</div>
<!-- 				페이지 처리 끝 -->
			</div>
		</div>
	</div>
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

</body>
</html>












			<!-- 본문 끝 -->
		</div>
	</section>
	<jsp:include page="/WEB-INF/views/market/footer.jsp" />

	<!-- script	 -->


	<!-- 유효성 체크  -->
	<!--===============================================================================================-->
	<script src="./resources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="./resources/vendor/bootstrap/js/popper.js"></script>
	<script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->

	<!--===============================================================================================-->
	<!-- <script type="text/javascript" src="resources/js/jquery-1.7.1.js"></script> -->
	<script type="text/javascript" src="resources/js/nh.js"></script>
	<!-- <script src='resources/js/jquery.validate.min.js' type="text/javascript"></script> -->
	<script
		src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
	<script type="text/javascript" src="resources/js/js_userinput.js"></script>
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
	<script src="./resources/js/nh2.js"></script>

</body>
</html>