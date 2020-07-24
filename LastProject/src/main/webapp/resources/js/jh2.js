(function() {
	// 버튼 클릭시 콜백함수 호출
	$("#searchMapTour").click(function() {
		alert("js연결 확인");
		// input 에 입력하는 검색어의 값을 keyWord변수에 담고 한글처리
		var keyWord = $("#map_tName").val();
		keyWord = encodeURIComponent(keyWord);

		// 입력된 keyWord변수의 값으로 결과를 내기 위해 URL 끝에 +keyWord 삽입과
		// url변수 선언
		var url = "https://apis.kakao.com/local/v2/search/keyword.json?apikey=3f5ae70510060b235ebe746b1cfe3dad&query="+ keyWord;
		
		// AJAX로 프로젝트 외부에 있는거 못가져옴
		// (브라우저의 동일 출처 정책)
		// XML : 자바로 받아서(프록시 서버)
		// JSON : 프록시 서버, 서버(다음)에서 JSONP를 적용해놨으면
		// {} => x
		// JSON with Padding
		// asdasd({}) => o
		// jQuery에서는 주소뒤에 &callback=?붙이면 사용가능
		// 위와 같은 이유로 URL 주소로 연결했을 때 제공되는 json 데이터를 이용하기 위한
		// jQuery내의 getJSON코드
		$.getJSON(url + "&callback=?", function(json) {
			// json.channel.item; 은 json데이터 내에서 내가 원하는 값에 접근하기 위해
			// Daum API에서 제공해주는 형식 맞게 단계별로 들어가는 코드
			var items = json.channel.item;
			// 반복문을 통해 원하는 json값을 뽑아내는 단계. 지금은 위도와 경도를 받기 위해...
				$.each(items, function(i, it) {
		// items는 위에 선언해둔 변수, it는 임의로 작성해도 되는 거.
		// 위도와 경도의 변수를 저장
					var latitude = it.latitude;
					var longitude = it.longitude;
					if (i == 0) {
						var container = document.getElementById('map');
						// 지도를 담을 영역의 DOM 레퍼런스
						var options = {
						// 지도를 생성할 때 필요한 기본 옵션
						center : new daum.maps.LatLng(latitude,	longitude), // 지도의 중심좌표.
														level : 3
														// 지도의 레벨(확대, 축소 정도)
						};
						var map = new daum.maps.Map(container, options); // 지도 생성 및 객체 리턴
					}
				});
			});
		});
	$("#map_tName").val("");
})