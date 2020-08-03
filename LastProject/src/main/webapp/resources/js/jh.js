$(function() {
// -------------------------------------------------------------------------------------
// 신규 관광지 등록 유효성
// 검사-----------------------------------------------------------------
	var urlcheck = false;
	$('#urlReg')
			.focusout(
					function() {
						var url = $("#urlReg").val()
						let regexp = /(http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/
						if (regexp.test(url) === false) {
							$("#url").html("유효한 url이 아닙니다");
							urlcheck = false;
						} else {
							$("#url").html("유효한 url입니다.");
							urlcheck = true;
						}
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

								document.getElementById("tAddr").value = addr;
								// 커서를 상세주소 필드로 이동한다.
								document.getElementById("tContent").focus();
							}
						}).open();

			});
// -----------------------------------------------------------------------------------------------------
// 신규 관광지
// 등록(관리자)------------------------------------------------------------------------------
	var tourCheck = false;
	$("#btn_submit").click(function(evt) {
		var urlchk = /(http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/
			if ($('#tName').val() === "") {
				event.preventDefault();
				alert("관광지명을 입력해주세요");
				return false;
			} else if ($('#tAddr').val() === "") {
				event.preventDefault();
				alert("주소를 입력해주세요");
				return false;
			} else if ($('#urlReg').val() === "") {
				alert("이미지 주소를 입력해주세요.")
				event.preventDefault();
				return false;
			} else if (!urlchk.test($('#urlReg').val())) {
				event.preventDefault();
				alert("이미지 주소가 유효하지 않습니다.");
				return false;
			} 
		$.ajax({
			async : true,
			type : "get",
			url : "newTour.market",
			data : {
				"tName" : $("#tName").val(),
				"tAddr" : $("#tAddr").val(),
				"tImg1" : $("#urlReg").val(),
				"tContent" : $("#tContent").val()
			},
			contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
			dataType : "text",
			success : function(resultData) { 
					alert("신규 관광지 정보가 등록되었습니다.");
					window.location = "insertTour.user";
			}
		});
	})
// -----------------------------------------------------------------------
// 관광지 리스트 삭제버튼(관리자)------------------------------------------------
	var tId = $("#tid").val();
	var pno = $("#pno").val();
	$(".deleteBtn").click(function(){
		event.preventDefault();
		var check = confirm("정말로 삭제하시겠습니까?");
		if(check){
			window.location = "deleteTour.do?tId="+tId+"&pno="+pno;
		}else{
			event.preventDefault();
		}
	})

// ------------------------------------------------------------------------
// 장바구니 예약상품, 주문배송 css -----------------------------------------------
	$('.navLi').click(function(){
		$(this).css("background-color","#eee");
		$('.navLi').not($(this)).css("background-color","");
	})
	
// ------------------------------------------------------------------------
// 자동 스크롤바---------------------------------------------------------------
	var $win = $(window);
	var top = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
	/* 사용자 설정 값 시작 */
	var speed = 500; // 따라다닐 속도 : "slow", "normal", or "fast" or
						// numeric(단위:msec)
	var easing = 'linear'; // 따라다니는 방법 기본 두가지 linear, swing
	var $layer = $('#quickPanel'); // 레이어 셀렉팅
	var layerTopOffset = 0; // 레이어 높이 상한선, 단위:px
	$layer.css('position', 'relative').css('z-index', '1'); /* 사용자 설정 값 끝 */ 
	// 스크롤 바를 내린 상태에서 리프레시 했을 경우를 위해
	if (top > 0 ) $win.scrollTop(layerTopOffset+top); 
	else $win.scrollTop(0); // 스크롤이벤트가 발생하면
	$(window).scroll(function(){ 
		yPosition = $win.scrollTop() - 100; // 이부분을 조정해서 화면에 보이도록 맞추세요
		if (yPosition < 0) {
			yPosition = 0;
			} $layer.animate({"top":yPosition},	{duration : speed, easing : easing,	queue:false});
	});
// -------------------------------------------------------------------------
// 장바구니페이지 버튼 hover
	$('.aa').hover(function(){
		$(this).css("background-color","green");
	}, function(){
		$(this).css("background-color","black");
	})
// ------------------------------------------------------------------------
// 장바구니페이지 취소 버튼 confirm 이벤트
	$('.cancleCart').on("click", function(){
		event.preventDefault();
		var tr = $(this).parent().parent().parent().parent();
		var bId = $('#bId').val();
		var aa = confirm("취소하시겠습니까?");
		if(aa){
			$.ajax({
				async : true,
				type : "get",
				url : "deleteShoppingCart.user",
				data : {
					"bId" : bId
				},
				contentType : 'application/json;charset=UTF-8',
				dataType : "text",
				success : function(result){
					tr.remove();
					alert("상품이 취소되었습니다.");
				},
				error : function(){
					alert("왜 에러?");
				}
			})
		}else{
			event.preventDefault();
		}
	})

// ---------------------------------------------------------------------
// 장바구니페이지 에서 체크된 상품들 결제 창으로 넘기기
	$('#payBtn').click(function(){
		
		var str = [];
    	$("input[type=checkbox]:checked").each(function(index) {  
        	str.push($(this).parent().prev().val());
        	$('#boxValue').val(str);
    	});  

	})


		
});
