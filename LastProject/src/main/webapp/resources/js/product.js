//sub cart
$(function() {
	
	//
	$('#priceOption').keyup(function(){ 
        //비동기통신 = ajax 
		$.ajax({
			type : 'get', //post방식으로 통신하겠습니다.
			async : true,
			url : 'optionCk.user',  
			contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
			data: "pOption1=" +$('#pOption1').val()+"&priceOption="+$('#priceOption').val(),
			success : function(resultData){
				$('#optionCheckResult').html(resultData); 
			},error:function(request,status,error){
				alert("error="+error);
			} 
		});  
       
	})
	
	$(document).on("click","#deleteBtn",function(){
      event.preventDefault();
      var bId = $(this).parent().next().children().val();
      var dkanrjsk =  $(this).parent().parent();
      var bro = parseInt($(this).parent().prev().prev().children().val());
      var total = parseInt($('#paytotal').val());
      var check1 = confirm("취소하시겠습니까??");
      if(check1){
         $.ajax({
            async : true,
               type : "get",
               url : "deleteDetailCart.user",
               data : {
                  "bId" : bId
               },
               contentType : 'application/json;charset=UTF-8',
               dataType : "text",
               success : function(result){
                  $('#paytotal').val(total-bro);
                  dkanrjsk.remove();
               },
               error : function(error){
                  alert("왜실패?");
                  
               }
         })
      }else{
         event.preventDefault();
      }
   })
	
	
	$('#addProduct').click(function() {
		   if($('input[name="chk_info"]:checked').val() == null){
		         event.preventDefault();
		         alert("주문방식을 선택해 주세요");
		         return false;
		      }else if($('#ok_login').length == 0){
		         event.preventDefault();
		         alert("로그인 후 이용 가능합니다");
		         return window.location = "cartConfirm.checking?pName="+$('#itemname').val()+"&pPrice="+$('#pPrice').val();
		      }
	      var bState = $('input[name="chk_info"]:checked').val();
	      var paytotal = 0;
	      var bOption = $("#size option:selected").attr("value2");
	      var bQuantity = $('#numm').val();
	      var bTitle = $('#itemname').val();
	      var bContent = $('#bContent').val();
	      var pId = $('#pId').val();
	      var pPrice = $('#pPrice').val();
	      $.ajax({
	         async : true,
	         type : "get",
	         url : "insertCart.user",
	         data : {
	            "pId" : pId,
	            "bContent" : bContent,
	            "bTitle" : bTitle,
	            "bQuantity" : bQuantity,
	            "bOption" : bOption,
	            "bState" : bState
	         },
	         contentType : 'application/json;charset=UTF-8',
	         dataType : "json",
	         success : function(result){
	            alert("상품이 장바구니에 추가되었습니다");
	            var html = '';
	            for (key in result) {
	               html += '<tr style="width: 100%;">';
	               html += '<td style="width: 20%;" class="listedName"><input type="text" value="'+result[key].bOption+'"+/></td>';
	               html += '<td style="width: 20%;"><input type="text" id="bQuantity" value="'+result[key].bQuantity+'"+/></td>';
	               html += '<td style="width: 20%;"><input type="text" value="'+result[key].bQuantity*pPrice+'"/></td>';
	               paytotal += result[key].bQuantity*pPrice;
	               html += '<td style="width: 20%;"><input type="text" value="'+result[key].bState+'"/></td>';
	               html +='<td style="width: 20%; padding-right:100px;"><button class="btn_delete" id="deleteBtn">[x]</button></td>';
	               html += '<td style="width: 0%;" class="listedName"><input type="hidden" id="bId" value="'+result[key].bId+'"+/></td>';
	               html += '</tr>';
	               $("#dynamicTbody").empty();
	               $("#dynamicTbody").append(html);
	         }$("#paytotal").val(paytotal+"원");
	         },error : function(request,status,error){
	            alert(" error = " + error); // 실패 시 처리
	            console.log(error.responseText);
	             }
	      })
	})
	$("#findpostcode").click(
			function execDaumPostcode() {
				new daum.Postcode(
						{
							oncomplete : function(data) {
								// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

								// 각 주소의 노출 규칙에 따라 주소를 조합한다.
								// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기
								// 한다.
								var addr = ''; // 주소 변수
								var extraAddr = ''; // 참고항목 변수

								// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
								if (data.userSelectedType === 'R') { // 사용자가
									// 도로명
									// 주소를
									// 선택했을
									// 경우
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
												+ data.buildingName
												: data.buildingName);
									}
									// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
									if (extraAddr !== '') {
										extraAddr = ' (' + extraAddr + ')';
									}
									// 조합된 참고항목을 해당 필드에 넣는다.
									// document.getElementById("sample6_extraAddress").value
									// = extraAddr;

								} else {
									// cument.getElementById("sample6_extraAddress").value
									// = '';
								}

								// 우편번호와 주소 정보를 해당 필드에 넣는다.
								document.getElementById("sample6_address").value = addr;
								// 커서를 상세주소 필드로 이동한다.
								document.getElementById("sample6_detailAddress").focus();
							}
						}).open();
			});
	
	
	
	// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
	var floatPosition = parseInt($("#floatMenu").css('top'));
	// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );

	$(window).scroll(function() {
		// 현재 스크롤 위치를 가져온다.
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + "px";

		/* 애니메이션 없이 바로 따라감
		 $("#floatMenu").css('top', newPosition);
		 */

		$("#floatMenu").stop().animate({
			"top" : newPosition
		}, 500);

	}).scroll();

});
