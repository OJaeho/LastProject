<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
   uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>상품정보 수정</title>
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
   href="./resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="./resources/css/util.css">
<link rel="stylesheet" type="text/css" href="./resources/css/main.css">
<link rel="stylesheet" type="text/css" href="./resources/css/jh.css">
<link rel="stylesheet" type="text/css" href="./resources/css/areum.css">
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<!--===============================================================================================-->
 <script src="./resources/vendor/jquery/jquery-3.3.1.min.js"></script>
</head>
<body>
   <!-- header -->
   <jsp:include page="/WEB-INF/views/market/header.jsp" />
   <section class="bg-img1 txt-center p-lr-15 p-tb-92" id="title_section"
      style="background-image: url('images/bg-01.jpg');">
      <h1 class="tour-title theme_color type_block">
         <span class="notice_title_bullet them_background"></span> 상품 정보 수정
      </h1>
   </section>
   <!-- header 끝 -->

   <div style="text-align: -webkit-center;">
      <form action="updataProduct.seller" method="get" id="frm">
         <table class="table_type2 type_background" style="width: 600px;">
            <tbody class="inner" data-role="lead_form">
               <tr>
                  <th scope="row"><label style="width: 100px;" for="sName"
                     class="font-black">상점명</label>
                  </th>
                  <td>
                      <input type="text" name="sName" id="sName" value="${product.sName}"
                     class="input_txt _isRequiredArea" disabled="disabled"
                     style="width: 300px">                   
                  </td>
               </tr>
               <tr>
                  <th scope="row"><label style="width: 100px;" for="tName"
                     class="font-black">상품명</label></th>
                  <td><input type="text" name="pName" id="pName" value="${product.pName}"
                     class="input_txt _isRequiredArea" data-required="true"
                     style="width: 300px"></td>
               </tr>
               <tr>
                  <th scope="row"><label style="width: 100px;" for="tName"
                     class="font-black">옵션</label></th>
                  <td><input type="text" name="pOption1" id="pOption1"
                     class="input_txt _isRequiredArea" value="${product.pOption1}"
                     data-required="true" style="width: 300px"></td>
                     
               </tr>
               <tr>
                  <th scope="row"><label style="width: 100px;" for="tName"
                     class="font-black">가격</label><span id="optionCheckResult"></span></th>
                  <td><input type="text" name="pPrice" id="pPrice"
                     class="input_txt _isRequiredArea"
                     value="${product.pPrice}" data-required="true"
                     style="width: 300px"></td>
               </tr>
               
               <tr>
                  <th scope="row"><label style="width: 100px;" for="tName"
                     class="font-black">상품설명</label></th>
                  <td><input type="text" name="pDetail" id="pDetail" value="${product.pDetail}"
                     class="input_txt _isRequiredArea" data-required="true"
                     style="width: 300px"></td>
               </tr>
               <tr>
                  <th scope="row"><label style="width: 100px;" for="tName"
                     class="font-black">수량</label></th>
                  <td><input type="text"  value="${product.pCount}"
                     name="pCount" id="pCount" class="input_txt _isRequiredArea"
                     data-required="true" style="width: 300px"></td>
               </tr>

            </tbody>
         </table>
         <div>
         	<input type="hidden" value="${product.sId}" name="sId">
         	<input type="hidden" value="${product.pId}" name="pId">
            <input type="submit" value="수정하기" class="btn-addr"
               style="margin-right: 38.5%">
         </div>
      </form>
   </div>


   <!-- footer -->
   <jsp:include page="/WEB-INF/views/market/footer.jsp" />
   <!--===============================================================================================-->
   <script type="text/javascript">
      
   </script>
   <!--===============================================================================================-->
  
   <!--===============================================================================================-->
   <script src="./resources/vendor/animsition/js/animsition.min.js"></script>
   <!--===============================================================================================-->
   <script src="./resources/vendor/bootstrap/js/popper.js"></script>
   <script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>
   <!--===============================================================================================-->
   <script src="./resources/vendor/select2/select2.min.js"></script>

   <!--===============================================================================================-->
   <script
      src="./resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
   <!--===============================================================================================-->
   <script
      src="./resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>

   <!--===============================================================================================-->
   <script src="./resources/js/main.js"></script>
   <script src="./resources/js/product.js"></script>
   <script
      src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>