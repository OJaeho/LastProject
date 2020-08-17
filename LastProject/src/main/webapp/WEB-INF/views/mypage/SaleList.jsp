<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="sec"
   uri="http://www.springframework.org/security/tags"%>
   <%@ taglib prefix="c"
   uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <title>판매내역  리스트</title>
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
    <style type="text/css">
   .loading span {
  display: inline-block;
  margin: 0 -.05em;
  animation: loading 1.4s infinite alternate;
  color: #009a45;
  font-weight: 800;
}
loading span:nth-child(2) {
  animation-delay: .1s;
}
loading span:nth-child(3) {
  animation-delay: .2s;
}
loading span:nth-child(4) {
  animation-delay: .3s;
}
loading span:nth-child(5) {
  animation-delay: .4s;
}
loading span:nth-child(6) {
  animation-delay: .5s;
}
loading span:nth-child(7) {
  animation-delay: .6s;
}
@keyframes loading {
  0% {
    opacity: 1;
  }
  100% {
    opacity: 0;
  }
}
   </style>
</head>
<body class="animsition">
 <!-- Header -->
     <jsp:include page="/WEB-INF/views/market/header.jsp" />
<!-- Title page -->
   <section class="bg-img1 txt-center p-lr-15 p-t-92" style="background-image: url('images/bg-01.jpg');">
      <h2 style="margin-top: 40px;"
                     class="cl2 p-b-30 theme_color cart-main-font">SALE LIST</h2>
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
	style="font-size: 25px;font-weight: bold; width: 200px;">픽업/배송 상태</h3>
   <div class="page_list" style="padding-top: 10px;">               
   <table class="table table-bordered table-hover">
                  <thead>
                     <tr>
                      <th class="mythlist">그룹</th>
                        <th class="mythlist">판매 대상</th>
                        <th class="mythlist">판매 내역</th>
                        <th class="mythlist">판매 수량</th>
                        <th class="mythlist">결제 금액</th>
                         <th class="mythlist">주문일</th>
                        <th class="mythlist">픽업/배송</th>
                        <th class="mythlist">상태</th>
                        <th class="mythlist">기타</th>
                     </tr>
                  </thead>
                  <tbody>
                     <c:forEach items="${RecentOrderList }" var="order">
                        
                        <tr class="QnA">
                        <td>${order.GROUPID }</td>
                           <td>${order.USERNAME }</td>
                           <td>${order.PAYCONTENT }</td>
                           <td>${order.PAYCOUNT }</td>
                           <td>${order.PAYTOTAL }</td>
                           <td>${order.PAYDATE }</td>
                           <td>${order.PAYSTATE }</td>
                          <td>
							<div class="loading">
							  <span>W</span>
							  <span>A</span>
							  <span>I</span>
							  <span>T</span>
							  <span>I</span>
							  <span>N</span>
							  <span>G</span>
							</div>
							</td>
                           <td><c:if test="${order.PAYCONTENT ne null }">
                           <input type="button" class='readyOrder join-btn' value='준비완료' >
                           <input type="button" class='detailOrder join-btn' value='상세보기' onClick="location.href='getpayview.user?GroupId=${order.GROUPID}'"  >
                           <input type="hidden" class="payId" value=${ order.PAYID}>
                           <input type="hidden" class="payState" value=${ order.PAYSTATE}>
                           </c:if></td>
                        </tr>
                     </c:forEach>
                  </tbody>
               </table>
            </div>
            

      
<h3 class="cl2 p-b-16 theme_color news-underbar"
	style="font-size: 25px;font-weight: bold; width: 200px;">
	판매완료
	</h3>
 <div class="page_list" style="padding-top: 10px;">
               <table class="table table-bordered table-hover">
                  <thead>
                     <tr>
                        <th class="mythlist">그룹</th>
                        <th class="mythlist">판매 대상</th>
                        <th class="mythlist">판매 내역</th>
                        <th class="mythlist">판매 수량</th>
                        <th class="mythlist">결제 금액</th>
                         <th class="mythlist">주문일</th>
                        <th class="mythlist">픽업/배송</th>
                        <th class="mythlist">상태</th>
                        <th class="mythlist">기타</th>
                     </tr>
                  </thead>
                  <tbody id="list_Sale">
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
<script type="text/javascript" src="resources/js/js_userinput.js"></script>
<!-- 무한 스크롤 -->
<script type="text/javascript" src="resources/js/infinitySale.js"></script> 
<!-- 업데이트 js -->
<script type="text/javascript" src="resources/js/mp.js"></script> 
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