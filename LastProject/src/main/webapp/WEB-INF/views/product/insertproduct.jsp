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
<title>상품등록</title>
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
         <span class="notice_title_bullet them_background"></span> 상품 등록하기
      </h1>
   </section>
   <!-- header 끝 -->

   <div style="text-align: -webkit-center;">
      <form action="pInsert.seller" method="get" id="frm">
         <table class="table_type2 type_background" style="width: 600px;">
            <tbody class="inner" data-role="lead_form">
               <tr>
                  <th scope="row"><label style="width: 100px;" for="sName"
                     class="font-black">상점명</label></th>


                  <td><select id="sName" name="sName" style="width: auto;">
                        
                        <c:if test="${not empty selectedstore}">
                        <option selected="selected">[${selectedstore}]</option>
                        </c:if>
                        <c:if test="${empty selectedstore}"> 
                        <option disabled>---------선택---------</option>
                        <c:forEach items="${storeget}" var="store">
                           <option id="storeget" value="${store.sName}">[
                              ${store.sName} ]</option>
                        </c:forEach>
                        </c:if>
                  </select></td>
               </tr>
               <tr>
                  <th scope="row"><label style="width: 100px;" for="tName"
                     class="font-black">상품명</label></th>
                  <td><input type="text" name="pName" id="pName"
                     class="input_txt _isRequiredArea" data-required="true"
                     style="width: 300px"></td>
               </tr>
               <tr>
                  <th scope="row"><label style="width: 100px;" for="tName"
                     class="font-black">옵션</label></th>
                  <td><input type="text" name="pOption1" id="pOption1"
                     class="input_txt _isRequiredArea" placeholder="ex) 소/중/대"
                     data-required="true" style="width: 300px"></td>
                     
               </tr>
               <tr>
                  <th scope="row"><label style="width: 100px;" for="tName"
                     class="font-black">가격</label><span id="optionCheckResult"></span></th>
                  <td><input type="text" name="priceOption" id="priceOption"
                     class="input_txt _isRequiredArea"
                     placeholder="ex) 10000/18000/23000" data-required="true"
                     style="width: 300px"></td>
               </tr>
               
               <tr>
                  <th scope="row"><label style="width: 100px;" for="tName"
                     class="font-black">상품설명</label></th>
                  <td><input type="text" name="pDetail" id="pDetail"
                     class="input_txt _isRequiredArea" data-required="true"
                     style="width: 300px"></td>
               </tr>
               <tr>
                  <th scope="row"><label style="width: 100px;" for="tName"
                     class="font-black">상품사진</label></th>
                  <td><input type="text" placeholder="url을 입력해주세요."
                     name="pImg1" id="pImg1" class="input_txt _isRequiredArea"
                     data-required="true" style="width: 300px"></td>
               </tr>

            </tbody>
         </table>
         <div>
            <input type="submit" value="등록하기" class="btn-addr"
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