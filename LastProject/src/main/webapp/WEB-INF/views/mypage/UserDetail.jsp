<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html lang="en">
<head>

<title>insertMarket</title>
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
<link rel="stylesheet" type="text/css"
	href="./resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./resources/css/areum.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<!--===============================================================================================-->

<!-- summernote -->
<script type="text/javascript">
	$(document).ready(function() {
		$('#summernote').summernote({
			height : 300, // 에디터 높이
			minHeight : null, // 최소 높이
			maxHeight : null, // 최대 높이
			focus : true, // 에디터 로딩후 포커스를 맞출지 여부
			lang : "ko-KR", // 한글 설정
			placeholder : '최대 2048자까지 쓸 수 있습니다' //placeholder
		});
	});
</script>
<script type="text/javascript">
	$(function() {
		alert("듣고있 나여?");
		$('#updateMarket').click(function() {
			alert('정보가 수정되었습니다.');
		});

		$('#deleteMarket').click(function() {
			alert(${message});
		});
	});
</script>

<!-- post검색--------------------------------------------------------------------------------------------------------------------------  -->
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function sample5_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var mkaddr = ''; // 주소 변수
						var mkextraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							mkaddr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							mkaddr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								mkextraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								mkextraAddr += (mkextraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (mkextraAddr !== '') {
								mkextraAddr = ' (' + mkextraAddr + ')';
							}
							// 조합된 참고항목을 해당 필드에 넣는다.
							document.getElementById("sample5_extraAddress").value = mkextraAddr;

						} else {
							document.getElementById("sample5_extraAddress").value = '';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample5_postcode').value = data.zonecode;
						document.getElementById("sample5_address").value = mkaddr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample5_detailAddress")
								.focus();
					}
				}).open();
	}
</script>
<!-- include summernote css/js-->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

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
		style="background-image: url('images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">고객관리</h2>
	</section>

	<!-- header끝 -->
	<!-- Content page -->
	<div class="joinMain">
		
		<!-- 시장정보 페이지 시작 -->
		<div class="mArticle">
			<h2 class="myth theme_color joinfont">시장 정보</h2>
			<form method="get" name="form">
				<input type="hidden" name="mkId" value="${market.mkId}"> 
				<input type="hidden" name="delYn" value="${market.delYn}">
				<input type="hidden" name="userName" value="${market.userName}"> 
				<div>
					<strong class="tf_required">시장명</strong>
					<div class="divlist">
						<input type="text" name="mkName" id="mkName"
							class="lab_placeholder" value="${market.mkName}" required="">
						<span id="idCheckResult" style="width: 150px; color: red"></span>
					</div>
				</div>
				<div>
					<strong class="tf_required">시장대표</strong>
					<div class="divlist">
						<input type="text" name="mkOwner" id="mkOwner"
							class="lab_placeholder" value="${market.mkOwner}" required="">						
					</div>
				</div>
				<div>
					<strong class="tf_required">시장주소</strong>
					<div class="divlist">
						<input type="text" name="mkAddr" id="mkAddr"
							class="lab_placeholder" value="${market.mkAddr}" required="">
											</div>
				</div>
				<div>
					<strong class="tf_required">시장전화번호</strong>
					<div class="divlist">
						<input  value="${market.mkTel}" 
							class="lab_placeholder" type="text" name="mkTel" id="mkTel" required="">
						<span id="telCheckResult" style="width: 150px; color: red"></span>
					</div>
				</div>

				<div>
					<strong class="tf_required">상점 보유수</strong>
					<div class="divlist">
						<input type="text" name="mkCount" id="mkCount"
							class="lab_placeholder" value="${market.mkCount}" required=""> 
					</div>
				</div>

				<div>
					<strong class="tf_required">시장이미지</strong>
					<div class="divlist">
						<input type="text" name="mkImg1" id="mkImg1"
							class="lab_placeholder"
							value="${market.mkImg1}" required=""> 						
					</div>
					<div class="divlist">
						<input type="text" name="mkImg2" id="mkImg2"
							class="lab_placeholder"
							value="${market.mkImg2}" required=""> 	
											</div>
				</div>
				<div>
					<strong class="tf_required">오시는길 이미지</strong>
					<div class="divlist">
						<input type="text" name="mkJido" id="mkJido"
							class="lab_placeholder"
							value="${market.mkJido}" required=""> 	
						
					</div>
				</div>
				<div>
					<strong class="tf_required">지역구분</strong>
					<div class="divlist">
						<input type="text" name="mkLocal" id="mkLocal"
							class="lab_placeholder"
							value="${market.mkLocal}" required=""> 
				</div>
				<div>
					<strong class="tf_required">시장 위도</strong>
					<div class="divlist">
						<input type="text" name="mkLat" id="mkLat" class="lab_placeholder"
							value="${market.mkLat}" required=""> 
					</div>
				</div>
				<div>
					<strong class="tf_required">시장 경도</strong>
					<div class="divlist">
						<input type="text" name="mkLong" id="mkLong" class="lab_placeholder"s
							value="${market.mkLong}" required=""> 
					</div>
				</div>
				<div>
					<strong class="tf_required">시장 오픈일자</strong>
					<div class="divlist">
						<div class="divlist">
							<input type="text" name="mkDate" id="mkDate"
								class="lab_placeholder" value="${market.mkDate}" required=""> 
						</div>
					</div>
				</div>
				<div>
					<strong class="tf_required">시장소개</strong>
						<textarea id="mkIntro" name="mkIntro" id="mkIntro"
							> ${market.mkIntro}</textarea>
					</div>
				</div>
				<!-- 마켓 정보입력 끝-->
				<hr />
				<div>
					<div class="divlist">
						<input type="submit" value="정보수정" class="updateMarket" name="updateMarket"
							onclick="javascript: form.action='updateMarket.master';" /> 
						<input type="submit" value="정보삭제" class="deleteMarket" name="deleteMarket"
							onclick="javascript: form.action='deleteMarket.master';" />
					</div>
				</div>
			</form>
		</div>
	</div>



	<!-- footer -->
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
</body>
</html>