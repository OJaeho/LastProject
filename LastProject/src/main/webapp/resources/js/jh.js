var win = $(window);
var num = 7;


win.scroll(function() {
    if ($(document).height() - win.height() == win.scrollTop()) {
    	alert("연결됨");
        $.ajax({
            url : 'tourList.do',
            data : {"num" : num},
            dataType : 'json',
            async : true,
            contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
            success: function(resultdata) {
            	$(".tour_info").empty();
            	$(".tour_info").appen(resultdata);
            }
        });
    }
});