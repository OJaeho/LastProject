let isEnd = false;
    
    $(function(){
        $(window).scroll(function(){
            let $window = $(this);
            let scrollTop = $window.scrollTop();
            let windowHeight = $window.height();
            let documentHeight = $(document).height();
            
            console.log("documentHeight:" + documentHeight + " | scrollTop:" + scrollTop + " | windowHeight: " + windowHeight );
            
            // scrollbar의 thumb가 바닥 전 30px까지 도달 하면 리스트를 가져온다.
            if( scrollTop + windowHeight + 30 > documentHeight ){
                fetchList();
            }
        })
        fetchList();
    })
    
    let fetchList = function(){
        if(isEnd == true){
            return;
        }
        
        // 방명록 리스트를 가져올 때 시작 번호
        // renderList 함수에서 html 코드를 보면 <li> 태그에 data-no 속성이 있는 것을 알 수 있다.
        // ajax에서는 data- 속성의 값을 가져오기 위해 data() 함수를 제공.
        let startNo = $("#payList_div div").last().data("no") || 0;
        $.ajax({
            url:"payListInfinity.user?no="+startNo +"&payState="+$('#payState').val()+"&start="+ $('#startView').val()+"&end="+$('#endView').val() ,
            type: "GET",
            dataType: "json",
            success: function(result){
                // 컨트롤러에서 가져온 방명록 리스트는 result.data에 담겨오도록 했다.
                // 남은 데이터가 5개 이하일 경우 무한 스크롤 종료
                let length = result.data.length;
                if( length < 5 ){
                    isEnd = true;
                }
                $.each(result.data, function(index, vo){
                    renderList(false, vo);
                })
            }
        });
    }
    
    let renderList = function(mode, vo){
    	if(vo.reviewCnt==0){
        	// 리스트 html을 정의
            let html = "<div data-no='"+ vo.NO +"'><h3>"+vo.SNAME +" | "+ vo.PAYSTATE +"</h3>"+
    			"<h4>"+vo.PAYTYPE +"</h4>"+
    			"<span>"+vo.PAYDATE+"</span><br/>"+
    			"<span>"+vo.PAYCONTENT+"</span><br/>"+
    			"<input class='join-btn' type='button' value='리뷰쓰기' onClick=location.href='product-detail.user?pName="+vo.PNAME+"&pPrice="+vo.PPRICE+"&pId="+vo.PID+"&payId="+vo.PAYID+"'  style='display:inline;' >"+
    			"&nbsp;"+"<input class='join-btn' type='button' value='가게보기' onClick=location.href='#'  style='display:inline;' >"+
    			"</div><hr/>"
    			$("h3").css("font-size", "22px");
            	$("h3").css("line-height", "1.7");
            	$("h4").css("font-size", "17px");
            	$("h4").css("font-weight", "600");
            	
            if( mode ){
                $("#payList_div").prepend(html);
            }
            else{
                $("#payList_div").append(html);
            }
        	}else{
        		// 리스트 html을 정의
                let html = "<div data-no='"+ vo.NO +"'><h3>"+vo.SNAME +" | "+ vo.PAYSTATE +"</h3>"+
        			"<h4>"+vo.PAYTYPE +"</h4>"+
        			"<span>"+vo.PAYDATE+"</span><br/>"+
        			"<span>"+vo.PAYCONTENT+"</span><br/>"+
        			"<input class='join-btn' type='button' value='리뷰작성완료' disabled='disabled' style='display:inline;' >"+
        			"&nbsp;"+"<input class='join-btn' type='button' value='가게보기' onClick=location.href='#'  style='display:inline;' >"+
        			"</div><hr/>"
        			$("h3").css("font-size", "22px");
                	$("h3").css("line-height", "1.7");
                	$("h4").css("font-size", "17px");
                	$("h4").css("font-weight", "600");
                	
                if( mode ){
                    $("#payList_div").prepend(html);
                }
                else{
                    $("#payList_div").append(html);
                }
        		
        		
        	}
    }
