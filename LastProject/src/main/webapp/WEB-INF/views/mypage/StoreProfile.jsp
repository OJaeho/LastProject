<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Store Profile</title>
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
<link rel="stylesheet" type="text/css"
	href="./resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./resources/css/areum.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<!--===============================================================================================-->
<script src="./resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!-- ---------------------------------------------------------------------------------------------------------------------------------- -->
<!-- Bootstrap -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />

</head>
<body class="animsition">

	<!-- Header -->
	<jsp:include page="/WEB-INF/views/market/header.jsp" />
	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92"
		style="background-image: url('images/bg-01.jpg');"></section>

	<!-- header끝 -->
	<!-- Content page -->
	<div class="joinMain">
		<div class="mArticle">

			<div>
							<!-- 회원가입 정보입력 시작 -->
							<div>
								<form method="get" action="sellerProfileUpdate.seller" id="frm">
								
								<h2 class="myth theme_color joinfont">판매자 정보</h2>
									<div class="divlist">
										<div>
											<strong class="tf_required">ID</strong>
											<div class="divlist">
												<input type="text" value=${store.USERNAME } name="userName" id="userName"
													class="lab_placeholder profile_input" disabled='disabled' > <span id="idCheckResult"
													style="width: 150px; color: red"></span>
											</div>
										</div>

<!-- 										<div class="divlist"> -->
<!-- 											<strong class="tf_required">비밀번호</strong> <input -->
<!-- 												type="password" name="Password" class="lab_placeholder" -->
<!-- 												 id="Password"> -->
<!-- 										</div> -->
										
										<div>
											<strong class="tf_required">이름</strong>
											<div class="divlist">
												<input type="text" value=${store.MNAME } name="mName" id="mName"
													disabled='disabled' class="lab_placeholder profile_input"> 
													<span id="idCheckResult" style="width: 150px; color: red"></span>
											</div>
										</div>

										<div>
											<strong class="tf_required">전화번호</strong>
											<div class="divlist">
												<input value=${store.MTEL }
													class="lab_placeholder profile-p-5" type="text" name="mTel" id="mTel">
												<span id="telCheckResult" style="width: 150px; color: red"></span>
											</div>
										</div>

										<div>
											<strong class="tf_required">주소</strong>
											<div class="divlist">
												<input type="text" disabled='disabled' name="mAddr" value=${store.MADDR } id="sample5_address"
													class="lab_placeholder profile_input" ><br>
											</div>
										</div>

										<div>
											<strong class="tf_required">이메일</strong>
											<div class="divlist">
												<input type="text" name="mEmail" value=${store.MEMAIL } id="mEmail"
													class="lab_placeholder profile-p-5">
											</div>
										</div>

										<div>
											<strong class="tf_required">포인트</strong>
											<div class="divlist">
												<input type="text" name="point" disabled='disabled' value=${store.SPOINT } id="mBirth"
													class="lab_placeholder profile_input">
											</div>
										</div>
										<hr/>
									</div>
									<!-- 회원가입 정보입력 끝-->
								
									<h2 class="myth theme_color joinfont">점포정보입력</h2>
									<div class="divlist2">
										<div>
											<strong class="tf_required">상점명</strong>
											<div class="divlist">
												<input type="text" name="sName" id="sName" disabled='disabled' value=${store.SNAME }
													class="lab_placeholder profile_input">
											</div>
										</div>

										<div>
											<strong class="tf_required">상점 설명</strong>
											<div class="divlist">
												<textarea
													class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10"
													id="sDetail" name="sDetail">${store.SDETAIL } </textarea>
											</div>
										</div>

										<div>
											<strong class="tf_required">전화번호</strong>
											<div class="divlist">
												<input 
													class="lab_placeholder profile-p-5" value=${store.STEL } type="text" name="sTel" id="sTel">
											</div>
										</div>
										
										<div>
											<strong class="tf_required">영업시간</strong>
											<div class="divlist">
												<input value=${store.STIME }
													class="lab_placeholder profile-p-5" type="text" name="sTime" id="sTime">
											</div>
										</div>

										<div>
											<strong class="tf_required">주소</strong>
												<input type="text" name="sAddr" id="sample6_address"
													class="lab_placeholder profile_input" disabled='disabled' value=${store.SADDR }><br>
												
											</div>
										</div>
										
										<div>
											<strong class="tf_required">상점대문사진</strong>
											<div class="divlist">
												<input type="text" name="sImg1" id="sImg1" 
												class="input_txt _isRequiredArea" value=${store.SIMG1 }
												data-name="단문 입력">
											</div>
										</div>
										
										<div>
											<strong class="tf_required">상점약도이미지</strong>
											<div class="divlist">
												<input type="text" name="sImg3" id="sImg3" 
												class="input_txt _isRequiredArea" value=${store.SIMG3 }
												data-name="단문 입력" data-required="true">
											</div>
										</div>
										
										<hr />
										<div>
											<div class="divlist">
												<input type="submit" name="submit" id="submit" value="수정"
													class="join-btn">
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
<!-- footer -->
	<jsp:include page="/WEB-INF/views/market/footer.jsp" />


		<!-- script	 -->


		<!-- 유효성 체크  -->
		<!--===============================================================================================-->
		
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
						$(this).on(
								'click',
								function() {
									swal(nameProduct, "is added to wishlist !",
											"success");

									$(this).addClass('js-addedwish-b2');
									$(this).off('click');
								});
					});

			$('.js-addwish-detail').each(
					function() {
						var nameProduct = $(this).parent().parent().parent()
								.find('.js-name-detail').html();

						$(this).on(
								'click',
								function() {
									swal(nameProduct, "is added to wishlist !",
											"success");

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
		<script src="./resources/js/product.js"></script>
</body>
</html>