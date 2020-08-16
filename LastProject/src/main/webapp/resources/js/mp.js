$(document).ready(function(){
   //준비 완료 버튼 눌렀을 시에
   $('.readyOrder').click(function(){ 
      var payId=$(this).next().val();
      var payState = $(this).next().next().val();
      
        //비동기통신 = ajax 
      $.ajax({
         type : 'get', //post방식으로 통신하겠습니다.
         async : true,
         url : 'ReadyOrder.seller',  
         contentType : 'application/json ;charset=UTF-8',
         data: {
            "payId" : payId,
            "payState" : payState
               },
         success : function(resultData){
            alert(payId+"번 상품 준비가 완료되었습니다."); 
            window.location.reload()
         } 
      });  
       
   });


});
