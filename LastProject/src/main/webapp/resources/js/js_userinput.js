$(function(){
	// 사용자의 자료 입력여부를 검사하는 함수
	$('#confirm').click(function(){
    	if( $.trim($("#id").val()) == '' ){
            alert("아이디를 입력해 주세요.");
            $("#id").focus();
            return;
        }
    	
    	if($.trim($('#password').val())==''){
    		alert("비밀번호 입력해주세요.");
    		$('#password').focus();
    		return;
    	}
    	
    	if($.trim($('#password').val()) != $.trim($('#password2').val())){
    		alert("비밀번호가 일치하지 않습니다..");
    		$('#password2').focus();
    		return;
    	}
    	
    	
    	if($.trim($('#name').val())==''){
    		alert("이름 입력해주세요.");
    		$('#name').foucs();
    		return;
    	}
    	
    	if($.trim($('#tel').val())==''){
    		alert("전화번호를 입력해주세요.");
    		$('#tel').foucs();
    		return;
    	}
    	
    	if($.trim($('#jumin').val())==''){
    		alert("주민등록번호를 입력해주세요.");
    		$('#jumin').foucs();
    		return;
    	}
    	
    	if($.trim($('#addr').val())==''){
    		alert("주소를 입력해주세요.");
    		$('#addr').foucs();
    		return;
    	}
    	
        // 자료를 전송합니다.
        document.userinput.submit();
	});
	
	//아이디 중복체크
	$('#id').keyup(function(){
        
		// 비동기 통신 = ajax
		$.ajax({
			type : 'post',
			async : true,
			url : 'idCheck.do',
			contentType:'application/x-www-form-urlencoded;charset=UTF-8',
			data : "id="+ $('#id').val(),
			success : function(resultData) {
				$('#idCheckResult').html(resultData);
			}
		});
       
	})
})
	
	
	
	
	
	
	
	
	