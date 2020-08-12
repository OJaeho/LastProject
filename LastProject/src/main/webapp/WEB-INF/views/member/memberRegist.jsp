<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>회원가입</title>
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




<!-- post검색--------------------------------------------------------------------------------------------------------------------------  -->
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}
							// 조합된 참고항목을 해당 필드에 넣는다.
							document.getElementById("sample6_extraAddress").value = extraAddr;

						} else {
							document.getElementById("sample6_extraAddress").value = '';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode;
						document.getElementById("sample6_address").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample6_detailAddress")
								.focus();
					}
				}).open();
	}
</script>

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
				<h2 class="myth theme_color joinfont"><spring:message
									code="header.join" arguments="${header}" text="default text" /></h2>
				<br />
				<p>
						<a href="<c:url value="/i16n.do?lang=ko" />" style="color: green;padding-left: 75%;font-size: 13px;">한국어</a>
						<a href="<c:url value="/i16n.do?lang=en" />" style="color: green;font-size: 13px;">/ English</a>
					</p>
					
				<strong class="tf_required"><spring:message
									code="header.membership" arguments="${header}" text="default text" /></strong>
				<div>
					<textarea class="form-control" rows="8" style="resize: none"><spring:message
									code="header.long1" arguments="${header}" text="default text" />
                        </textarea>

					<div class="radio">
						<label> <input type="radio" class="Terms"
							name="provisionYn" id="mTermsY" value="Y" autofocus="autofocus"
							checked> <spring:message
									code="header.agree" arguments="${header}" text="default text" />
						</label>
					</div>
					<div class="radio">
						<label> <input type="radio" class="Terms"
							name="provisionYn" id="mTermsN" value="N"> <spring:message
									code="header.disagree" arguments="${header}" text="default text" />
						</label>
					</div>
				</div>
				<div>
					<strong class="tf_required"><spring:message
									code="header.privacy" arguments="${header}" text="default text" /></strong>
					<div>

						<textarea class="form-control" rows="8" style="resize: none"><spring:message
									code="header.long2" arguments="${header}" text="default text" />
                        </textarea>

						<div class="radio">
							<label> <input type="radio" class="Terms" id="infoTermsY"
								"
                    name="infoTermsYN" value="Y" checked>
								<spring:message
									code="header.agree" arguments="${header}" text="default text" />
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" class="Terms" id="infoTermsN"
								"
                   name="infoTermsYN" value="N"> <spring:message
									code="header.disagree" arguments="${header}" text="default text" />
							</label> <br />
							<hr />

							<!-- 회원가입 정보입력 시작 -->
							<div>
								<form method="get" action="insertMember.user" id="frm">
									<h2 class="myth theme_color joinfont"><spring:message
									code="header.insertjoin" arguments="${header}" text="default text" /></h2>
									<div class="divlist2">
										<div>
											<strong class="tf_required"><spring:message
									code="header.id" arguments="${header}" text="default text" /></strong>
											<div class="divlist">
												<input type="text" name="userName" id="userName"
													class="lab_placeholder" placeholder="<spring:message
									code="header.idplaceholder" arguments="${header}" text="default text" />"
													required=""> <span id="idCheckResult"
													style="width: 150px; color: red"></span>
											</div>
										</div>

										<div class="divlist">
											<strong class="tf_required"><spring:message
									code="header.password" arguments="${header}" text="default text" /></strong> <input
												type="password" name="Password" class="lab_placeholder"
												placeholder="<spring:message
									code="header.password" arguments="${header}" text="default text" />" required="" id="Password">
										</div>
										<div class="divlist">
											<input type="password" name="Password2"
												class="lab_placeholder" placeholder="<spring:message
									code="header.password2" arguments="${header}" text="default text" />" required=""
												id="Password2">
										</div>

										<div>
											<strong class="tf_required"><spring:message
									code="header.name" arguments="${header}" text="default text" /></strong>
											<div class="divlist">
												<input type="text" name="mName" id="mName"
													class="lab_placeholder" placeholder="<spring:message
									code="header.insertname" arguments="${header}" text="default text" />"
													required=""> <span id="idCheckResult"
													style="width: 150px; color: red"></span>
											</div>
										</div>

										<div>
											<strong class="tf_required"><spring:message
									code="header.tel" arguments="${header}" text="default text" /></strong>
											<div class="divlist">
												<input placeholder="<spring:message
									code="header.telplaceholder" arguments="${header}" text="default text" />" required=""
													class="lab_placeholder" type="text" name="mTel" id="mTel">
												<span id="telCheckResult" style="width: 150px; color: red"></span>
											</div>
										</div>

										<div>
											<strong class="tf_required"><spring:message
									code="header.address" arguments="${header}" text="default text" /></strong>
											<div class="divlist">
												<input type="text" name='mPost' id="sample6_postcode"
													class="lab_placeholder" placeholder="<spring:message
									code="header.post" arguments="${header}" text="default text" />">
												<div class="divlist2">
													<input type="button" onclick="sample6_execDaumPostcode()"
														class="btn_area join-btn" value="<spring:message
									code="header.postfind" arguments="${header}" text="default text" />">
												</div>
												<input type="text" name="addr" id="sample6_address"
													class="lab_placeholder" placeholder="<spring:message
									code="header.address" arguments="${header}" text="default text" />"><br>
												<input type="text" name="detailAddr"
													id="sample6_detailAddress" class="lab_placeholder"
													placeholder="<spring:message
									code="header.detailaddress" arguments="${header}" text="default text" />">
												<div class="divlist">
													<input type="text" id="sample6_extraAddress"
														class="lab_placeholder" placeholder="<spring:message
									code="header.seealso" arguments="${header}" text="default text" />">
												</div>
											</div>
										</div>

										<div>
											<strong class="tf_required"><spring:message
									code="header.email" arguments="${header}" text="default text" /></strong>
											<div class="divlist">
												<input type="text" name="mEmail" id="mEmail"
													class="lab_placeholder" placeholder="<spring:message
									code="header.emailplaceholder" arguments="${header}" text="default text" />" required="">
											</div>
										</div>

										<div>
											<strong class="tf_required"><spring:message
									code="header.birthsex" arguments="${header}" text="default text" /></strong>
											<div class="divlist">
												<input type="date" name="mBirth" id="mBirth"
													class="lab_placeholder">
											</div>
											<div class="divlist checkbox icheck-success">
												<label> <input type="radio" id="Female"
													name="mGender" value="Female" checked><spring:message
									code="header.Female" arguments="${header}" text="default text" />
												</label> <label> <input type="radio" id="mGender"
													name="mGender" value="Male"><spring:message
									code="header.Male" arguments="${header}" text="default text" />
												</label>
											</div>
										</div>
										<hr />
										<div>
											<div class="divlist">
												<input type="submit" name="submit" id="submit" value="<spring:message
									code="header.regist" arguments="${header}" text="default text" />"
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
</body>
</html>