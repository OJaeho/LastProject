<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <title>판매물품  리스트</title>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->   
   <link rel="icon" type="image/png" href="./resources/images/icons/favicon.png"/>
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="./resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="./resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="./resources/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="./resources/vendor/animate/animate.css">
<!--===============================================================================================-->   
   <link rel="stylesheet" type="text/css" href="./resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="./resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="./resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->   
   <link rel="stylesheet" type="text/css" href="./resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="./resources/vendor/slick/slick.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="./resources/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="./resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="./resources/css/util.css">
   <link rel="stylesheet" type="text/css" href="./resources/css/main.css">
   <link rel="stylesheet" type="text/css" href="./resources/css/areum.css">
   <link rel="stylesheet" type="text/css" href="./resources/css/hover.css">
   <link rel="stylesheet" href="./resources/css/bootstrap.css">
<!--===============================================================================================-->

<!-- ---------------------------------------------------------------------------------------------------------------------------------- -->
<!-- Bootstrap -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
   rel="stylesheet" type="text/css" />
</head>
<body class="animsition">
 <!-- Header -->
     <jsp:include page="/WEB-INF/views/market/header.jsp" />
<!-- Title page -->
   <section class="bg-img1 txt-center p-lr-15 p-t-92" style="background-image: url('images/bg-01.jpg');">
		<h2 style="margin-top: 40px;" class="cl2 theme_color cart-main-font">PRODUCT LIST</h2>
   </section>   
<!-- header끝 -->
   <!-- Content page -->
   <section class="bg0 p-b-120">
      <div class="container">
      <!-- 좌우측의 공간 확보 -->
   
      <div class="row">
         <p></p>
         <div class="col-md-12"></div>
      </div>


	<h3 class="cl2 p-b-16 theme_color news-underbar"
	style="font-size: 25px;font-weight: bold;">임시품절</h3>
   <div class="page_list" style="padding-top: 10px;">
               <table class="table table-bordered table-hover">
                  <thead>
                     <tr>
                        <th class="mythlist">상품ID</th>
                        <th class="mythlist">상품명</th>
                        <th class="mythlist">현재 수량</th>
                        <th class="mythlist">옵션</th>
                        <th class="mythlist">판매가격</th>
                        <th class="mythlist">수정/삭제</th>
                     </tr>
                  </thead>
                  <tbody>
                     <c:forEach items="${cntZeroProduct }" var="zero">
                        <tr class="QnA">
                           <td>${zero.PID }</td>
                           <td id="#">
                           <a href="#" style="font-size: 15px; color: black;"> ${zero.PNAME }</a></td>
                           <td style="color: red; font-weight: bold;" >${zero.PCOUNT }</td>
                           <td>${zero.POPTION1 }</td>
                           <td>${zero.PPRICE }</td>
                           <td><c:if test="${zero.pId eq null }"><input class="join-btn" type="button" value="상세수정" onClick="location.href='MoveModifySell.seller?pId=${zero.PID}'">
                           <input class="join-btn" type="button" value="삭제" onClick="location.href='DeleteSell.seller?pId=${zero.PID}'"></c:if></td>
                        </tr>
                     </c:forEach>
                  </tbody>
               </table>
               <hr />
            </div>

      
<h3 class="cl2 p-b-16 theme_color news-underbar"
style="font-size: 25px;font-weight: bold;">판매중</h3>
 <div class="page_list" style="padding-top: 10px;">
               <table class="table table-bordered table-hover">
                  <thead>
                     <tr>
                        <th class="mythlist">상품ID</th>
                        <th class="mythlist">상품명</th>
                        <th class="mythlist">현재 수량</th>
                        <th class="mythlist">옵션</th>
                        <th class="mythlist">판매가격</th>
                        <th class="mythlist">수정/삭제</th>
                     </tr>
                  </thead>
                  <tbody id="list_product">
                  </tbody>
               </table>
               <hr />
            </div>

 </section>
 <jsp:include page="/WEB-INF/views/market/footer.jsp" />

<!-- script    -->


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
<!-- 무한 스크롤 -->
<script type="text/javascript" src="resources/js/js_userinput.js"></script>
<script type="text/javascript" src="resources/js/infinity1.js"></script> 
<!--===============================================================================================-->   
   <script src="./resources/vendor/select2/select2.min.js"></script>
   <script>
      $(".js-select2").each(function(){
         $(this).select2({
            minimumResultsForSearch: 20,
            dropdownParent: $(this).next('.dropDownSelect2')
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
   <script src="./resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
   <script>
      $('.gallery-lb').each(function() { // the containers for all your galleries
         $(this).magnificPopup({
              delegate: 'a', // the selector for gallery item
              type: 'image',
              gallery: {
                 enabled:true
              },
              mainClass: 'mfp-fade'
          });
      });
   </script>
<!--===============================================================================================-->
   <script src="./resources/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
   <script src="./resources/vendor/sweetalert/sweetalert.min.js"></script>
   <script>
      $('.js-addwish-b2').on('click', function(e){
         e.preventDefault();
      });

      $('.js-addwish-b2').each(function(){
         var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
         $(this).on('click', function(){
            swal(nameProduct, "is added to wishlist !", "success");

            $(this).addClass('js-addedwish-b2');
            $(this).off('click');
         });
      });

      $('.js-addwish-detail').each(function(){
         var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

         $(this).on('click', function(){
            swal(nameProduct, "is added to wishlist !", "success");

            $(this).addClass('js-addedwish-detail');
            $(this).off('click');
         });
      });

      /*---------------------------------------------*/

      $('.js-addcart-detail').each(function(){
         var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
         $(this).on('click', function(){
            swal(nameProduct, "is added to cart !", "success");
         });
      });
   
   </script>
<!--===============================================================================================-->
   <script src="./resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
   <script>
      $('.js-pscroll').each(function(){
         $(this).css('position','relative');
         $(this).css('overflow','hidden');
         var ps = new PerfectScrollbar(this, {
            wheelSpeed: 1,
            scrollingThreshold: 1000,
            wheelPropagation: false,
         });

         $(window).on('resize', function(){
            ps.update();
         })
      });
   </script>
<!--===============================================================================================-->
   <script src="./resources/js/main.js"></script>


</body>
</html>