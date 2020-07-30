$(document).ready(function(){
	$("#qnaInsertBtn").click(function(){
		if($('#qCate').val()==null){
			alert("Q&A 분류를 선택해주세요");
		}else{
			$("#QnAinsert").submit();
		}
	})

});
