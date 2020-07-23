<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="UTF-8">
<head>

<!-- 지도 ajax 설정 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>

$(document).ready(function(){

    $("#div1").load("./resources/map/market3.html");

});

</script>
	<title>Home</title>
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
<!--===============================================================================================-->

</head>
<body class="animsition">
	<jsp:include page="/WEB-INF/views/market/header.jsp" />

<!-- Title page -->
   <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-01.jpg');">
      <h2 class="ltext-105 cl0 txt-center">
        	MAP
      </h2>
   </section>   

   <!-- Content page -->
   <!-- map -->
   <section class="bg0 p-t-75 p-b-120">
      <div class="container">
		<div class="col-sm-8 p-b-50" id="div1"style="position: relative; left: 150px; max-width: 100%; padding-bottom: 56.25%; height: 450; width: "700; margin: -15px 20px 0px 20px;">
			<!-- <h3></h3>
			<div style="include-source:url("./resources/map/market3.html") position: relative; left: 150px; max-width: 100%; padding-bottom: 56.25%; height: 450; width: 700;">	
			 	<iframe width="700" height="450"
					src="./resources/map/market3.html"
					name="map" id="map " frameborder="1" scrolling="yes" align="center" allowfullscreen> </iframe>		
			</div> -->
		</div>
			<div class="col-sm-4 p-b-50">
					<h2>
						어느 시장으로 가볼까요?
					</h2>
					<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
					</br>
					<form>
						<ul class="list_info">
						<li>
						<select name="select_item" class="select_item" style="width:330px;height:80px;">
						 <option value="selected">선 택</option>
						  	<c:forEach var="item" items="${list}" >
					    		<option value="${item.mkName}">${item.mkName}</option>
						  	</c:forEach>
						</select>
						</li>			
						
						</ul>
					</form>
				</div>
	</div>
	</section>	
		
	<!-- map end-->
	<jsp:include page="/WEB-INF/views/market/footer.jsp" />
<!-- ---------------지도마커------------------------------------------------------------------------------>
<script>    
    
            var map_05cb59dcb3404d0499dd8162a238459d = L.map(
                "map_05cb59dcb3404d0499dd8162a238459d",
                {
                    center: [35.8386331289207, 128.709349504178],
                    crs: L.CRS.EPSG3857,
                    zoom: 7,
                    zoomControl: true,
                    preferCanvas: false,
                }
            );

            

        
    
            var tile_layer_6079b9471a2a40e3b6288497122bea64 = L.tileLayer(
                "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                {"attribution": "Data by \u0026copy; \u003ca href=\"http://openstreetmap.org\"\u003eOpenStreetMap\u003c/a\u003e, under \u003ca href=\"http://www.openstreetmap.org/copyright\"\u003eODbL\u003c/a\u003e.", "detectRetina": false, "maxNativeZoom": 18, "maxZoom": 18, "minZoom": 0, "noWrap": false, "opacity": 1, "subdomains": "abc", "tms": false}
            ).addTo(map_05cb59dcb3404d0499dd8162a238459d);
        
    
            var marker_bbd43963abef4023a7874d38ced90f6e = L.marker(
                [37.2760281870243, 127.020772841097],
                {}
            ).addTo(map_05cb59dcb3404d0499dd8162a238459d);
        
    
            var icon_28037876f2dc4a6599e2dc82c0a7c549 = L.AwesomeMarkers.icon(
                {"extraClasses": "fa-rotate-0", "icon": "info-sign", "iconColor": "white", "markerColor": "red", "prefix": "glyphicon"}
            );
            marker_bbd43963abef4023a7874d38ced90f6e.setIcon(icon_28037876f2dc4a6599e2dc82c0a7c549);
        
    
        var popup_03f0c279646c488e8ffb54f4e8355773 = L.popup({"maxWidth": "100%"});

        
            var html_12fbb6ad65154d66b1d84b819e564a45 = $(`<div id="html_12fbb6ad65154d66b1d84b819e564a45" style="width: 100.0%; height: 100.0%;">못골종합시장</div>`)[0];
            popup_03f0c279646c488e8ffb54f4e8355773.setContent(html_12fbb6ad65154d66b1d84b819e564a45);
        

        marker_bbd43963abef4023a7874d38ced90f6e.bindPopup(popup_03f0c279646c488e8ffb54f4e8355773)
        ;

        
    
    
            var marker_cc72106e82de464b8135661d586dcec1 = L.marker(
                [37.8784941852272, 127.725753816407],
                {}
            ).addTo(map_05cb59dcb3404d0499dd8162a238459d);
        
    
            var icon_142b30fa6b02468abd5519a3dcc8e672 = L.AwesomeMarkers.icon(
                {"extraClasses": "fa-rotate-0", "icon": "info-sign", "iconColor": "white", "markerColor": "red", "prefix": "glyphicon"}
            );
            marker_cc72106e82de464b8135661d586dcec1.setIcon(icon_142b30fa6b02468abd5519a3dcc8e672);
        
    
        var popup_faa901d7ebc94b59824e7807480ca6c3 = L.popup({"maxWidth": "100%"});

        
            var html_53a96b2917db4b8787bf25fb9ba80b10 = $(`<div id="html_53a96b2917db4b8787bf25fb9ba80b10" style="width: 100.0%; height: 100.0%;">중앙시장</div>`)[0];
            popup_faa901d7ebc94b59824e7807480ca6c3.setContent(html_53a96b2917db4b8787bf25fb9ba80b10);
        

        marker_cc72106e82de464b8135661d586dcec1.bindPopup(popup_faa901d7ebc94b59824e7807480ca6c3)
        ;

        
    
    
            var marker_861b168935414726a91290264dde68d2 = L.marker(
                [35.5278576744949, 129.32023151789],
                {}
            ).addTo(map_05cb59dcb3404d0499dd8162a238459d);
        
    
            var icon_9e9041344a9b4e1ebf29ffaae17268e6 = L.AwesomeMarkers.icon(
                {"extraClasses": "fa-rotate-0", "icon": "info-sign", "iconColor": "white", "markerColor": "red", "prefix": "glyphicon"}
            );
            marker_861b168935414726a91290264dde68d2.setIcon(icon_9e9041344a9b4e1ebf29ffaae17268e6);
        
    
        var popup_f41584167e504d33baff7746fa42c140 = L.popup({"maxWidth": "100%"});

        
            var html_1835e291894b48468e0b3f74d4b84ff3 = $(`<div id="html_1835e291894b48468e0b3f74d4b84ff3" style="width: 100.0%; height: 100.0%;">수암종합시장</div>`)[0];
            popup_f41584167e504d33baff7746fa42c140.setContent(html_1835e291894b48468e0b3f74d4b84ff3);
        

        marker_861b168935414726a91290264dde68d2.bindPopup(popup_f41584167e504d33baff7746fa42c140)
        ;

        
    
    
            var marker_7ba7ab14d50f4e8c992dc22f023d24ae = L.marker(
                [35.118038741234, 129.039667479087],
                {}
            ).addTo(map_05cb59dcb3404d0499dd8162a238459d);
        
    
            var icon_cc54593de15746adbf08055eaab7fc22 = L.AwesomeMarkers.icon(
                {"extraClasses": "fa-rotate-0", "icon": "info-sign", "iconColor": "white", "markerColor": "red", "prefix": "glyphicon"}
            );
            marker_7ba7ab14d50f4e8c992dc22f023d24ae.setIcon(icon_cc54593de15746adbf08055eaab7fc22);
        
    
        var popup_8aee543fdc754e83b1b796153303ed96 = L.popup({"maxWidth": "100%"});

        
            var html_d0c248a332f14eddb978efdcdad4c990 = $(`<div id="html_d0c248a332f14eddb978efdcdad4c990" style="width: 100.0%; height: 100.0%;">초량전통시장</div>`)[0];
            popup_8aee543fdc754e83b1b796153303ed96.setContent(html_d0c248a332f14eddb978efdcdad4c990);
        

        marker_7ba7ab14d50f4e8c992dc22f023d24ae.bindPopup(popup_8aee543fdc754e83b1b796153303ed96)
        ;

        
    
    
            var marker_4c7809311e314cd98d144131a1605d88 = L.marker(
                [36.6344774615293, 127.485405904657],
                {}
            ).addTo(map_05cb59dcb3404d0499dd8162a238459d);
        
    
            var icon_418c41ccc1384659ba10f9a757b2bbf8 = L.AwesomeMarkers.icon(
                {"extraClasses": "fa-rotate-0", "icon": "info-sign", "iconColor": "white", "markerColor": "red", "prefix": "glyphicon"}
            );
            marker_4c7809311e314cd98d144131a1605d88.setIcon(icon_418c41ccc1384659ba10f9a757b2bbf8);
        
    
        var popup_47868531fd87436d82a7dc9fa760c281 = L.popup({"maxWidth": "100%"});

        
            var html_846992243b2249ef8a8f789458a12f7e = $(`<div id="html_846992243b2249ef8a8f789458a12f7e" style="width: 100.0%; height: 100.0%;">서문시장</div>`)[0];
            popup_47868531fd87436d82a7dc9fa760c281.setContent(html_846992243b2249ef8a8f789458a12f7e);
        

        marker_4c7809311e314cd98d144131a1605d88.bindPopup(popup_47868531fd87436d82a7dc9fa760c281)
        ;

        
    
    
            var marker_c96f9ec31b9144c6a13b4ea795b79e28 = L.marker(
                [37.4249507704916, 126.647754088012],
                {}
            ).addTo(map_05cb59dcb3404d0499dd8162a238459d);
        
    
            var icon_6237f5b842ec4ca7933e58c5fb904172 = L.AwesomeMarkers.icon(
                {"extraClasses": "fa-rotate-0", "icon": "info-sign", "iconColor": "white", "markerColor": "red", "prefix": "glyphicon"}
            );
            marker_c96f9ec31b9144c6a13b4ea795b79e28.setIcon(icon_6237f5b842ec4ca7933e58c5fb904172);
        
    
        var popup_af2f761c70db41e2b8bb773425276e2d = L.popup({"maxWidth": "100%"});

        
            var html_2edff7efb67b4e1496b2c32a4492a157 = $(`<div id="html_2edff7efb67b4e1496b2c32a4492a157" style="width: 100.0%; height: 100.0%;">옥련시장</div>`)[0];
            popup_af2f761c70db41e2b8bb773425276e2d.setContent(html_2edff7efb67b4e1496b2c32a4492a157);
        

        marker_c96f9ec31b9144c6a13b4ea795b79e28.bindPopup(popup_af2f761c70db41e2b8bb773425276e2d)
        ;

        
    
    
            var marker_0d7122f7b117473f98c16650a38f6f0b = L.marker(
                [36.6021512550011, 126.668023205561],
                {}
            ).addTo(map_05cb59dcb3404d0499dd8162a238459d);
        
    
            var icon_29dbb08a2ec6470fba4e05e814a65d00 = L.AwesomeMarkers.icon(
                {"extraClasses": "fa-rotate-0", "icon": "info-sign", "iconColor": "white", "markerColor": "red", "prefix": "glyphicon"}
            );
            marker_0d7122f7b117473f98c16650a38f6f0b.setIcon(icon_29dbb08a2ec6470fba4e05e814a65d00);
        
    
        var popup_9d73e6b5a4a9458d9dff23274d44b70d = L.popup({"maxWidth": "100%"});

        
            var html_c18e760f49f741438c9eff7ad478cb20 = $(`<div id="html_c18e760f49f741438c9eff7ad478cb20" style="width: 100.0%; height: 100.0%;">홍성전통시장</div>`)[0];
            popup_9d73e6b5a4a9458d9dff23274d44b70d.setContent(html_c18e760f49f741438c9eff7ad478cb20);
        

        marker_0d7122f7b117473f98c16650a38f6f0b.bindPopup(popup_9d73e6b5a4a9458d9dff23274d44b70d)
        ;

        
    
    
            var marker_644210bef61f4b168d8a03dd14ec8a7c = L.marker(
                [35.8386331289207, 128.709349504178],
                {}
            ).addTo(map_05cb59dcb3404d0499dd8162a238459d);
        
    
            var icon_693a696b8e7d478697bcf8b897781a69 = L.AwesomeMarkers.icon(
                {"extraClasses": "fa-rotate-0", "icon": "info-sign", "iconColor": "white", "markerColor": "red", "prefix": "glyphicon"}
            );
            marker_644210bef61f4b168d8a03dd14ec8a7c.setIcon(icon_693a696b8e7d478697bcf8b897781a69);
        
    
        var popup_16cf52b75b224e7c80592720f0ce8d8c = L.popup({"maxWidth": "100%"});

        
            var html_e4ef9013630d42059b3bd043e4496179 = $(`<div id="html_e4ef9013630d42059b3bd043e4496179" style="width: 100.0%; height: 100.0%;">신매시장</div>`)[0];
            popup_16cf52b75b224e7c80592720f0ce8d8c.setContent(html_e4ef9013630d42059b3bd043e4496179);
        

        marker_644210bef61f4b168d8a03dd14ec8a7c.bindPopup(popup_16cf52b75b224e7c80592720f0ce8d8c)
        ;

        
    
    
            var marker_f97ec6c8203a4713a0b215e823acd860 = L.marker(
                [33.2501489768202, 126.563230508718],
                {}
            ).addTo(map_05cb59dcb3404d0499dd8162a238459d);
        
    
            var icon_814499a8f9444b99be6ef0fe85caaeef = L.AwesomeMarkers.icon(
                {"extraClasses": "fa-rotate-0", "icon": "info-sign", "iconColor": "white", "markerColor": "red", "prefix": "glyphicon"}
            );
            marker_f97ec6c8203a4713a0b215e823acd860.setIcon(icon_814499a8f9444b99be6ef0fe85caaeef);
        
    
        var popup_994ac7a07bcd4e6e97d0953199c14366 = L.popup({"maxWidth": "100%"});

        
            var html_10c5f6ae9d064765916ad21b161b340d = $(`<div id="html_10c5f6ae9d064765916ad21b161b340d" style="width: 100.0%; height: 100.0%;">서귀포매일올레시장</div>`)[0];
            popup_994ac7a07bcd4e6e97d0953199c14366.setContent(html_10c5f6ae9d064765916ad21b161b340d);
        

        marker_f97ec6c8203a4713a0b215e823acd860.bindPopup(popup_994ac7a07bcd4e6e97d0953199c14366)
        ;

        
    
    
            var marker_ed4612e160774e5a9d554f962f4638f4 = L.marker(
                [35.8453940583343, 129.216311960953],
                {}
            ).addTo(map_05cb59dcb3404d0499dd8162a238459d);
        
    
            var icon_22d967c0b2b84e27b07a94e060ec2bf3 = L.AwesomeMarkers.icon(
                {"extraClasses": "fa-rotate-0", "icon": "info-sign", "iconColor": "white", "markerColor": "red", "prefix": "glyphicon"}
            );
            marker_ed4612e160774e5a9d554f962f4638f4.setIcon(icon_22d967c0b2b84e27b07a94e060ec2bf3);
        
    
        var popup_52ceb4dd0e5840a880676a7a68173f5d = L.popup({"maxWidth": "100%"});

        
            var html_bce3b04d2cf2451295adb4e390ad919f = $(`<div id="html_bce3b04d2cf2451295adb4e390ad919f" style="width: 100.0%; height: 100.0%;">성동시장</div>`)[0];
            popup_52ceb4dd0e5840a880676a7a68173f5d.setContent(html_bce3b04d2cf2451295adb4e390ad919f);
        

        marker_ed4612e160774e5a9d554f962f4638f4.bindPopup(popup_52ceb4dd0e5840a880676a7a68173f5d)
        ;

        
    
    
            var marker_1802abae201642b88815d72217617e79 = L.marker(
                [35.2057887136344, 128.573458652937],
                {}
            ).addTo(map_05cb59dcb3404d0499dd8162a238459d);
        
    
            var icon_5151b34679464016831ec2f200a43bd8 = L.AwesomeMarkers.icon(
                {"extraClasses": "fa-rotate-0", "icon": "info-sign", "iconColor": "white", "markerColor": "red", "prefix": "glyphicon"}
            );
            marker_1802abae201642b88815d72217617e79.setIcon(icon_5151b34679464016831ec2f200a43bd8);
        
    
        var popup_81b6b448c73847808550cb5adb10ce82 = L.popup({"maxWidth": "100%"});

        
            var html_5b65fe9ae2a3456daaebafb0805a25bf = $(`<div id="html_5b65fe9ae2a3456daaebafb0805a25bf" style="width: 100.0%; height: 100.0%;">부림시장</div>`)[0];
            popup_81b6b448c73847808550cb5adb10ce82.setContent(html_5b65fe9ae2a3456daaebafb0805a25bf);
        

        marker_1802abae201642b88815d72217617e79.bindPopup(popup_81b6b448c73847808550cb5adb10ce82)
        ;

        
    
    
            var marker_f359ba8d5d2a417486ecafa8675449e1 = L.marker(
                [36.3156167170625, 127.43848860496],
                {}
            ).addTo(map_05cb59dcb3404d0499dd8162a238459d);
        
    
            var icon_5294e366080b45d385636e48f788eeb1 = L.AwesomeMarkers.icon(
                {"extraClasses": "fa-rotate-0", "icon": "info-sign", "iconColor": "white", "markerColor": "red", "prefix": "glyphicon"}
            );
            marker_f359ba8d5d2a417486ecafa8675449e1.setIcon(icon_5294e366080b45d385636e48f788eeb1);
        
    
        var popup_b18a8db6797d4886be4fc211614dde2c = L.popup({"maxWidth": "100%"});

        
            var html_dcd794a65e764a0e86fbda82b574e1fa = $(`<div id="html_dcd794a65e764a0e86fbda82b574e1fa" style="width: 100.0%; height: 100.0%;">문창전통시장</div>`)[0];
            popup_b18a8db6797d4886be4fc211614dde2c.setContent(html_dcd794a65e764a0e86fbda82b574e1fa);
        

        marker_f359ba8d5d2a417486ecafa8675449e1.bindPopup(popup_b18a8db6797d4886be4fc211614dde2c)
        ;

        
    
    
            var marker_005f246bdf834b7fa13a45dca9e505a7 = L.marker(
                [35.3232136605669, 126.980723047498],
                {}
            ).addTo(map_05cb59dcb3404d0499dd8162a238459d);
        
    
            var icon_3c3872ecd6c2417790d3f9ebe1cdcc85 = L.AwesomeMarkers.icon(
                {"extraClasses": "fa-rotate-0", "icon": "info-sign", "iconColor": "white", "markerColor": "red", "prefix": "glyphicon"}
            );
            marker_005f246bdf834b7fa13a45dca9e505a7.setIcon(icon_3c3872ecd6c2417790d3f9ebe1cdcc85);
        
    
        var popup_5a733beb14e8409ab370309770a5c540 = L.popup({"maxWidth": "100%"});

        
            var html_06f1b0c0db664cdd89d0e8c963d20715 = $(`<div id="html_06f1b0c0db664cdd89d0e8c963d20715" style="width: 100.0%; height: 100.0%;">담양시장</div>`)[0];
            popup_5a733beb14e8409ab370309770a5c540.setContent(html_06f1b0c0db664cdd89d0e8c963d20715);
        

        marker_005f246bdf834b7fa13a45dca9e505a7.bindPopup(popup_5a733beb14e8409ab370309770a5c540)
        ;

        
    
    
            var marker_5e67c5565fcb4a9594489b36dc60d9b6 = L.marker(
                [35.4326657264275, 126.698771052728],
                {}
            ).addTo(map_05cb59dcb3404d0499dd8162a238459d);
        
    
            var icon_60c4918480044b49a06773e0a7d13a5f = L.AwesomeMarkers.icon(
                {"extraClasses": "fa-rotate-0", "icon": "info-sign", "iconColor": "white", "markerColor": "red", "prefix": "glyphicon"}
            );
            marker_5e67c5565fcb4a9594489b36dc60d9b6.setIcon(icon_60c4918480044b49a06773e0a7d13a5f);
        
    
        var popup_50be295d97334bc4b56f2b121909d308 = L.popup({"maxWidth": "100%"});

        
            var html_bb3ff7be69d342ce8f16820129b6bd23 = $(`<div id="html_bb3ff7be69d342ce8f16820129b6bd23" style="width: 100.0%; height: 100.0%;">고창전통시장</div>`)[0];
            popup_50be295d97334bc4b56f2b121909d308.setContent(html_bb3ff7be69d342ce8f16820129b6bd23);
        

        marker_5e67c5565fcb4a9594489b36dc60d9b6.bindPopup(popup_50be295d97334bc4b56f2b121909d308)
        ;

        
    
    
            var marker_68182a8270ba4598b704c89fd810d551 = L.marker(
                [36.5997893450152, 127.300611591801],
                {}
            ).addTo(map_05cb59dcb3404d0499dd8162a238459d);
        
    
            var icon_e6f9bf3558e443db801be8dc07290e97 = L.AwesomeMarkers.icon(
                {"extraClasses": "fa-rotate-0", "icon": "info-sign", "iconColor": "white", "markerColor": "red", "prefix": "glyphicon"}
            );
            marker_68182a8270ba4598b704c89fd810d551.setIcon(icon_e6f9bf3558e443db801be8dc07290e97);
        
    
        var popup_6804159a9bf94891b76a8add8fad6f1c = L.popup({"maxWidth": "100%"});

        
            var html_f62f4bb621a8448981b78b9a05fb55f5 = $(`<div id="html_f62f4bb621a8448981b78b9a05fb55f5" style="width: 100.0%; height: 100.0%;">세종전통시장</div>`)[0];
            popup_6804159a9bf94891b76a8add8fad6f1c.setContent(html_f62f4bb621a8448981b78b9a05fb55f5);
        

        marker_68182a8270ba4598b704c89fd810d551.bindPopup(popup_6804159a9bf94891b76a8add8fad6f1c)
        ;

        
    
    
            var marker_49c51b6102a94bd69b2b1544c175c893 = L.marker(
                [37.4249507704916, 126.647754088012],
                {}
            ).addTo(map_05cb59dcb3404d0499dd8162a238459d);
        
    
            var icon_5684a2e295af429cb319950273be7f5f = L.AwesomeMarkers.icon(
                {"extraClasses": "fa-rotate-0", "icon": "info-sign", "iconColor": "white", "markerColor": "red", "prefix": "glyphicon"}
            );
            marker_49c51b6102a94bd69b2b1544c175c893.setIcon(icon_5684a2e295af429cb319950273be7f5f);
        
    
        var popup_d2c022f36182424480a7e73bf986ab22 = L.popup({"maxWidth": "100%"});

        
            var html_ef161cb45a134982a65691388d5f09e2 = $(`<div id="html_ef161cb45a134982a65691388d5f09e2" style="width: 100.0%; height: 100.0%;">옥련시장</div>`)[0];
            popup_d2c022f36182424480a7e73bf986ab22.setContent(html_ef161cb45a134982a65691388d5f09e2);
        

        marker_49c51b6102a94bd69b2b1544c175c893.bindPopup(popup_d2c022f36182424480a7e73bf986ab22)
        ;

        
    
    
            var marker_644043a589e74dddac6629b5c966952f = L.marker(
                [37.5562324286887, 126.905625567761],
                {}
            ).addTo(map_05cb59dcb3404d0499dd8162a238459d);
        
    
            var icon_1f85efc8b2ab44b49e902a7f130ae96a = L.AwesomeMarkers.icon(
                {"extraClasses": "fa-rotate-0", "icon": "info-sign", "iconColor": "white", "markerColor": "red", "prefix": "glyphicon"}
            );
            marker_644043a589e74dddac6629b5c966952f.setIcon(icon_1f85efc8b2ab44b49e902a7f130ae96a);
        
    
        var popup_3fb2156111f44222a13ba22e685695e3 = L.popup({"maxWidth": "100%"});

        
            var html_37476123ae0a420aa67361af32e3e101 = $(`<div id="html_37476123ae0a420aa67361af32e3e101" style="width: 100.0%; height: 100.0%;">망원시장</div>`)[0];
            popup_3fb2156111f44222a13ba22e685695e3.setContent(html_37476123ae0a420aa67361af32e3e101);
        

        marker_644043a589e74dddac6629b5c966952f.bindPopup(popup_3fb2156111f44222a13ba22e685695e3)
        ;

        
    
</script>		
				
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