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
        let startNo = $("#list_product tr").last().data("no") || 0;
        alert(startNo);
        $.ajax({
            url:"productListJson.seller?no=" + startNo ,
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
        // 리스트 html을 정의
        let html = "<tr data-no='"+ vo.no +"'>" +
        	"<td>"+ vo.pId +"</td>" +
            "<td>"+ vo.pName +"</td>" +
            "<td>"+ vo.pCount +  "</td>" +
            "<td>"+vo.pOption1+"</td>" +
            "<td>"+vo.pPrice+"</td>" +
            "<td><input type='button' value='상세 수정' onClick=location.href=MoveModifySell.seller?pId="+vo.pId+"'>"+
            "<input type='button' value='삭제' onClick=location.href='DeleteSell.seller?pId="+vo.pId+"'></td>"+
            "</tr>"
        
        if( mode ){
            $("#list_product").prepend(html);
        }
        else{
            $("#list_product").append(html);
        }
    }
  

   