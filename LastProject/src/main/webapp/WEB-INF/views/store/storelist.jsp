<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@page import="com.vo.ProductVO"%>
<%@page import="com.vo.CategoryVO"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Product</title>
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
<link rel="stylesheet" type="text/css" href="./resources/css/product.css">
<link rel="stylesheet" type="text/css" href="./resources/css/areum.css">
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<!--===============================================================================================-->

</head>
<body class="animsition">
	<jsp:include page="/WEB-INF/views/market/header.jsp" />
	<!-- Title page -->
	<!-- Content page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92">
		<h2 class="tour-title theme_color type_block">
		<span class="notice_title_bullet them_background"></span>
		업종별 상점목록
		</h2>
	</section>
<div class="fc_content content _content_body">
        <div class="fcdeck_container">
          <div class="fcdeck_ct">
            <div class="card on" data-cid="b2si8b8p" data-anchor="bc45de87c950a2537e18b032b42cca6e">
            <!-- [D] 타이틀 비노출할 경우 is_title_none 클래스 추가 -->
            <div class="main_area current" data-cid="b2si8b8p" data-anchor="bc45de87c950a2537e18b032b42cca6e" data-adult-flag="0" data-title="업종별 소개">
            <div class="inner _inner">
	              <div class="r component_box _component" data-index="0">  
	              <div class="btn_wrap ">    
		              <ul class="btn_theme">            
		              <li class="them_background">        
			              <a class="btn btn_ic36" href="flickcard://dlmyb1sc">          
			              <div class="in">            
			              <span class="btn_text">음식/식품</span>
			              <span class="ic"><span class="ic_v"></span></span>          
			              </div>        
			              </a>      
			              </li>            
			              <li class="them_background">        
			              <a class="btn btn_ic36" href="flickcard://6ug4igyx">          
			              <div class="in">            
			              <span class="btn_text">수산/횟집</span>
			              <span class="ic"><span class="ic_v"></span></span>          
			              </div>        
			              </a>      
			              </li>            
			              <li class="them_background">        
			              <a class="btn btn_ic36" href="flickcard://95iaq1an">          
			              <div class="in">            
			              <span class="btn_text">축산물</span>
			              <span class="ic"><span class="ic_v"></span></span>          
			              </div>        
			              </a>      
		              </li>          
		              </ul>  
	              </div>
	              </div>
              <div class="component_box _component" data-index="1">  
              <div class="division_line">    
              <div class="space">
              </div>  
              </div>
              </div>
              <div class="r component_box _component" data-index="2">  
              <div class="btn_wrap ">    
	              <ul class="btn_theme">            
	              <li class="them_background">        
		              <a class="btn btn_ic36" href="#">          
		              <div class="in">            
		              <span class="btn_text">농산물/반찬</span>
		              <span class="ic"><span class="ic_v"></span></span>          
		              </div>        
		              </a>      
		              </li>            
		              <li class="them_background">        
		              <a class="btn btn_ic36" href="#">          
		              <div class="in">            
		              <span class="btn_text">제과/제빵/떡</span>
		              <span class="ic"><span class="ic_v"></span></span>          
		              </div>        
		              </a>      
		              </li>            
		              <li class="them_background">        
		              <a class="btn btn_ic36" href="#">          
		              <div class="in">            
		              <span class="btn_text">마트/과일</span>
		              <span class="ic"><span class="ic_v"></span></span>          
		              </div>        
		              </a>      
	              </li>          
	              </ul>  
              </div>
              </div>
              <div class="component_box _component" data-index="3">  
              <div class="division_line">    
              <div class="space"></div>  
              </div>
              </div>
              <div class="r component_box _component" data-index="4">  
              <div class="btn_wrap ">    
	              <ul class="btn_theme">            
	              <li class="them_background">        
		              <a class="btn btn_ic36" href="#">          
		              <div class="in">            
		              <span class="btn_text">방앗간</span>
		              <span class="ic"><span class="ic_v"></span></span>          
		              </div>        
		              </a>      
		              </li>            
		              <li class="them_background">        
		              <a class="btn btn_ic36" href="#">          
		              <div class="in">            
		              <span class="btn_text">건강원</span>
		              <span class="ic"><span class="ic_v"></span></span>          
		              </div>        
		              </a>      
		              </li>            
		              <li class="them_background">        
		              <a class="btn btn_ic36" href="#">          
		              <div class="in">            
		              <span class="btn_text">화장품</span>
		              <span class="ic"><span class="ic_v"></span></span>          
		              </div>        
		              </a>      
	              </li>          
	              </ul>  
              </div>
              </div>
              <div class="component_box _component" data-index="5">  
              <div class="division_line">    
              <div class="space"></div>  
              </div>
              </div>
              <div class="r component_box _component" data-index="6">  
              <div class="btn_wrap ">    
	              <ul class="btn_theme">            
	              <li class="them_background">        
		              <a class="btn btn_ic36" href="#">          
		              <div class="in">            
		              <span class="btn_text">의류</span>
		              <span class="ic"><span class="ic_v"></span></span>          
		              </div>        
		              </a>      
		              </li>            
		              <li class="them_background">        
		              <a class="btn btn_ic36" href="#">          
		              <div class="in">            
		              <span class="btn_text">분식</span>
		              <span class="ic"><span class="ic_v"></span></span>          
		              </div>       
		              </a>      
		              </li>            
		              <li class="them_background">        
		              <a class="btn btn_ic36" href="#">          
		              <div class="in">            
		              <span class="btn_text">이불/가방/신발</span>
		              <span class="ic"><span class="ic_v"></span></span>          
		              </div>        
		              </a>      
	              </li>          
	              </ul>  
              </div>
              </div>
              <div class="component_box _component" data-index="7">  
              <div class="division_line">    
              <div class="space"></div>  
              </div>
              </div>
              <div class="r component_box _component" data-index="8">  
              <div class="btn_wrap ">    
	              <ul class="btn_theme">            
	              <li class="them_background">        
		              <a class="btn btn_ic36" href="#">          
		              <div class="in">            
		              <span class="btn_text">건어물/젓갈</span>
		              <span class="ic"><span class="ic_v"></span></span>          
		              </div>        
		              </a>      
		              </li>            
		              <li class="them_background">        
		              <a class="btn btn_ic36" href="#">          
		              <div class="in">            
		              <span class="btn_text">꽃집/귀금속</span>
		              <span class="ic"><span class="ic_v"></span></span>          
		              </div>        
		              </a>      
		              </li>            
		              <li class="them_background">        
		              <a class="btn btn_ic36" href="#">          
		              <div class="in">            
		              <span class="btn_text">기타</span>
		              <span class="ic"><span class="ic_v"></span></span>          
		              </div>        
		              </a>      
	              </li>          
	              </ul>  
              </div>
              </div>
            </div>
          </div>
        </div>

       </div>
    </div>
  </div>






	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>
	<jsp:include page="/WEB-INF/views/market/footer.jsp"></jsp:include>


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
		$('.js-addwish-b2, .js-addwish-detail').on('click', function(e) {
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
	<script src="./resources/js/product.js"></script>
</body>
</html>