$(document).ready(function(){
	
	//아이디 중복체크
	$('.readyOrder').click(function(){ 
		var payId=$(this).next().val();
		alert(payId);
        //비동기통신 = ajax 
		$.ajax({
			type : 'get', //post방식으로 통신하겠습니다.
			async : true,
			url : 'ReadyOrder.seller',  
			contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
			data: "payId="+payId,
			success : function(resultData){
				alert(resultData); 
			} 
		});  
       
	})
	


});
