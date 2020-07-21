var win = $(window);
var num = 7;


win.scroll(function() {
    if ($(document).height() - win.height() == win.scrollTop()) {
    	alert("연결");
        $.ajax({
            url : 'tourList.do',
            data : {"num" : num},
            dataType : 'json',
            async : true,
            contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
            success : function(please) {
            	alert("성공");
            },
            error: function(){
                alert("실패");
            }
        });
    }
});