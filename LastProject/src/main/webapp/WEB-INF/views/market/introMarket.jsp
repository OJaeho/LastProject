<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>

<!-- 지도 ajax 설정 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
	
</script>
<title>introMarket</title>
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
		<h2 class="tour-title theme_color type_block">
		<span class="notice_title_bullet them_background"></span>
		시장소개
		</h2>
	</section>

	<!-- Content page -->

	<section class="bg0 p-t-75 txt-center">
		<div class="container">
			<div class="row p-b-148">
				<div class="">
					<div id="mangwon">
						<h3 class="cl2 p-b-16 theme_color news-underbar"
						style="font-size: 27px;font-weight: bold;">시장소개</h3>
						<div style="margin-left: auto; margin-right: auto; margin: 10px;">
								<!-- 이미지1 삽입할곳 -->
								<div class="component_box component_margin _component"
									data-index="0">
									<div
										class="gallery_area _image_view_container type5 align_l v_align_m black_bg sma   txt_none">

										<div class="gallery_img">
											<a href=""><img src="${intro.mkImg1}" alt="이미지"></a>
										</div>
										<div class="mask_bg" style="opacity: 0;"></div>
									</div>
								</div>
								<!-- 여백 -->
								<div class="component_box _component" data-index="1">
									<div class="division_line">
										<div class="space"></div>
									</div>
								</div>
								<!-- 시장 이름넣은곳(mkName) -->
								<div class="component_box _component" data-index="2">
									<div class="txt_box">
										<div class="txt_component color1 big align_c t_space "
											style="color: rgb(0, 154, 69);">
											<h4 class="intro_font_bold"
											style="font-size: 35px;">${intro.mkName}은</h4>
										</div>
									</div>
								</div>
								<!-- 여백 -->
								<div class="component_box _component" data-index="3">
									<div class="division_line">
										<div class="space"></div>
									</div>
								</div>
								<!-- 시장 소개넣은곳(mkIntro) -->
								<div class="component_box _component" data-index="4">
									<div class="txt_box">
										<div class="txt_component color2 big align_c t_space">
											<p class="intro_content_font txt-center"
											style="font-size: 20px;">${intro.mkIntro}</p>
										</div>
									</div>
								</div>
								<hr>
								<!-- 여백 -->
								<div class="component_box _component" data-index="5">
									<div class="division_line">
										<div class="space"></div>
									</div>
								</div>
								<!-- 여백 -->
								<div class="component_box _component" data-index="6">
									<div class="division_line">
										<div class="space"></div>
									</div>
								</div>
								<!-- 이미지2 삽입할곳 -->
								<div class="component_box component_margin _component" data-index="7">
									<div class="gallery_img">
										<a href=""><img alt="" src="${intro.mkImg2}" alt="이미지" style="width: 100%; height: auto;"></a>
									</div>
									<div class="mask_bg" style="opacity: 0;"></div>
								</div>
								<!-- 여백 -->
								<div class="component_box _component" data-index="8">
									<div class="division_line">
										<div class="space"></div>
									</div>
								</div>

								<!-- 시장 상점갯수와 넣는 곳은-->
								<div class="component_box _component" data-index="9">
									<div class="txt_box">
										<div class="txt_component color1 big align_c t_space "
											style="color: rgb(0, 154, 69);">
											<h3 class="intro_font_bold"
											style="font-size: 35px;">${intro.mkName} 상점 수는</h3>
										</div>
									</div>
								</div>

								<!-- 시장 소개넣은곳(mkCount) -->
								<div class="" data-index="10">
									<div class="txt_box">
										<div class="txt_component color2 big align_c t_space ">
											<p class="intro_content_font txt-center"
											style="font-size: 20px;">음식점, 농수산물, 축산물, 의류 등 다양한 상점을 ${intro.mkCount}개를 보유하고
												있고,</p>
										</div>
									</div>
								</div>
								<!-- 여백 -->
								<div class="component_box _component" data-index="11">
									<div class="division_line">
										<div class="space"></div>
									</div>
								</div>
								<div class="component_box _component" data-index="12">
									<div class="txt_box">
										<div class="txt_component color1 big align_c t_space " >
											<div class="txt_component color1 big align_c t_space "
											style="color: rgb(0, 154, 69);">
											<h3 class="intro_font_bold"
											style="font-size: 35px;">시장이 생긴 날짜는</h3>
										</div>
											<div class="txt_component color2 big align_c t_space ">											
											<p class="intro_content_font txt-center"
											style="font-size: 20px;">${intro.mkDate} 입니다.</p>
										</div></div>
									</div>
								</div>
								<!-- 여백 -->
								<div class="component_box _component" data-index="13">
									<div class="division_line">
										<div class="space"></div>
									</div>
								</div>

								<!-- 시장 상점갯수와 넣는 곳은-->
								<div class="component_box _component" data-index="14">
									<div class="txt_box">
										<div class="txt_component color1 big align_c t_space "
											style="color: rgb(0, 154, 69);">
											<h3 class="intro_font_bold"
											style="font-size: 35px;">${intro.mkName} 영업시간은</h3>
										</div>
									</div>
								</div>
								<!-- 여백 -->
								<div class="component_box _component" data-index="15">
									<div class="division_line">
										<div class="space"></div>
									</div>
								</div>
								<!-- 운영시간 넣는 곳-->
								<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
								<div class="component_margin _component" data-index="16">
									<div class="view_table bdr_table ">
										<table class="tx_a_c tx_v_m" border="1" cellspacing="0"
											summary="표 입력">
											<tbody>
												<tr>
													<td class="intro_content_font" rowspan="1" colspan="1" data-row="0" data-column="0"
													style="font-size: 20px;">${intro.mkTime}</td>
												</tr>

											</tbody>
										</table>
									</div>
								</div>
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

</body>
</html>