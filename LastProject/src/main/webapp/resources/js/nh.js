$(document).ready(function(){
	
	//아이디 중복체크
	$('#userName').keyup(function(){ 
        //비동기통신 = ajax 
		$.ajax({
			type : 'get', //post방식으로 통신하겠습니다.
			async : true,
			url : 'idCheck.user',  
			contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
			data: "userName=" +$('#userName').val(),
			success : function(resultData){
				$('#idCheckResult').html(resultData);  
			} 
		});  
       
	})
	//전화번호 중복체크
	$('#mTel').keyup(function(){ 
        //비동기통신 = ajax 
		$.ajax({ 
			type : 'get', //post방식으로 통신하겠습니다.
			async : true,
			url : 'telCheck.user',  
			contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
			data: "mTel=" +$('#mTel').val(),
			success : function(resultData){
				$('#telCheckResult').html(resultData);  
			}  
		}); 
       
	});
	
	

	//약관  체크하기 	(체크시  submit버튼 봉인해제)
	$("input:radio[class='Terms']").click(function(){
				if($("input:radio[name='infoTermsYN']:radio[value='N']").prop('checked')== true ||
						$("input:radio[name='provisionYn']:radio[value='N']").prop('checked')== true){
					$('#submit').attr('disabled',true);
					$('#submit').prop('value', '회원가입');
				}else if($("input:radio[name='infoTermsYN']:radio[value='Y']").prop('checked')== true &&
						$("input:radio[name='provisionYn']:radio[value='Y']").prop('checked')== true){
					$('#submit').attr('disabled',false);
					$('#submit').attr('value', '회원가입');
					
				}

			});

	
	
		

	
	
	
	//이름 입력시 한글만 입력받기
	$('#mName').keyup(function(event){
		regexp = /[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"'\\]/g;
        v = $(this).val();
        if (regexp.test(v)) {
            alert("실명을 입력하여 주세요\n한글만 입력가능 합니다.");
            $(this).val(v.replace(regexp, '')); 
        }
	});
	
	//숫자만 입력받기
	$('#mTel').keyup(function(event){
		regexp = /[^0-9]/gi; 
        v = $(this).val(); 
        if (regexp.test(v)) {
            alert("숫자만 입력 가능합니다.");
            $(this).val(v.replace(regexp, ''));  
        }
	}); 
	
	
	// 비밀번호 패턴 체크 (8자 이상, 문자, 숫자, 특수문자 포함여부 체크) 
	function checkPassword(str) { 
		var pattern1 = /[0-9]/; // 숫자 
		var pattern2 = /[a-zA-Z]/; // 문자 
		var pattern3 = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자 
		if(!pattern1.test(str) || !pattern2.test(str) || !pattern3.test(str) || str.length < 8) { 
				alert("비밀번호는 8자리 이상 문자, 숫자, 특수문자로 구성하여야 합니다."); 
				return false; 
			} else { 
				return true;
			} 
	}
	
	

	//유효성 검사	 
	
	$.validator.addMethod("passwordCk",  function( value, element ) {

		return this.optional(element) ||  /^.*(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@~*#$%^&+=]).*$/.test(value);

		}); 
	
	//유효성 검사	 
	$('#frm').validate({  
		rules:{ 
			userName :{
				  required:true, 
				  minlength:6,
				  maxlength:10 
				  },
			mName:{required:true,
				   minlength:2,
				   hangul:true
				   },
			mEmail:{required:true,
					email:true
					}, 		
		    Password : {
				required:true, 
				minlength:8,
				maxlength:16,
				passwordCk :true
				},
			Password2 : {equalTo:'#Password'}   
			},
			mTel :{
				required:true,
				minlength:10,
				maxlength:11,
				number:true 
			},
		success:function(label){			
		}  
	});

	//이름 입력시 한글만 입력받기
	$('#mName').keyup(function(event){
		regexp = /[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"'\\]/g;
        v = $(this).val();
        if (regexp.test(v)) {
            alert("실명을 입력하여 주세요\n한글만 입력가능 합니다.");
            $(this).val(v.replace(regexp, '')); 
        }
	});
	
	//숫자만 입력받기
	$('#mTel').keyup(function(event){
		regexp = /[^0-9]/gi; 
        v = $(this).val(); 
        if (regexp.test(v)) {
            alert("숫자만 입력 가능합니다.");
            $(this).val(v.replace(regexp, ''));  
        }
	}); 
	
	// 비밀번호 패턴 체크 (8자 이상, 문자, 숫자, 특수문자 포함여부 체크) 
	function checkPassword(str) { 
		var pattern1 = /[0-9]/; // 숫자 
		var pattern2 = /[a-zA-Z]/; // 문자 
		var pattern3 = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자 
		if(!pattern1.test(str) || !pattern2.test(str) || !pattern3.test(str) || str.length < 8) { 
				alert("비밀번호는 8자리 이상 문자, 숫자, 특수문자로 구성하여야 합니다."); 
				return false; 
			} else { 
				return true;
			} 
	}

	$.extend($.validator.messages, { 
		required: "필수 항목입니다.",
		remote: "항목을 수정하세요.",
		email: "유효하지 않은 E-Mail주소입니다." +"<br/>", 
		url: "유효하지 않은 URL입니다.",
		date: "올바른 날짜를 입력하세요.",
		dateISO: "올바른 날짜(ISO)를 입력하세요.", 
		number: "숫자만 입력 가능합니다.",
		digits: "숫자만 입력 가능합니다.",
		creditcard: "신용카드 번호가 바르지 않습니다.",
		equalTo: "같은 값을 다시 입력하세요.",
		extension: "올바른 확장자가 아닙니다.",
		maxlength: $.validator.format( "{0}자를 넘을 수 없습니다. " ),
		minlength: $.validator.format( "{0}자 이상 입력하세요." ),
		rangelength: $.validator.format( "문자 길이가 {0} 에서 {1} 사이의 값을 입력하세요." ),
		range: $.validator.format( "{0} 에서 {1} 사이의 값을 입력하세요." ),
		max: $.validator.format( "{0} 이하의 값을 입력하세요." ),
		min: $.validator.format( "{0} 이상의 값을 입력하세요." ),
		passwordCk : "숫자,영문,특수문자 조합이어야합니다."

	} );


});
