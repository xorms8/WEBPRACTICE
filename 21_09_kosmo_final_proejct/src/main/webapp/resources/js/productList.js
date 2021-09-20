// url 파라미터값 가져오는 함수
var getUrlParameter = function getUrlParameter(sParam) {
    var sPageURL = decodeURIComponent(window.location.search.substring(1)),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;
 
    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');
 
        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : sParameterName[1];
        }
    }
};

$(document).ready(function(){
	
	// 파라미터값 가져와서 변수로 저장
	var keyword = getUrlParameter('keyword');
	var select = getUrlParameter('select');
	
	// 파라미터값이 있으면
	if(keyword != '' || keyword != null){
		
		// url에 포함할 parameter 값 저장
		var href = "&keyword=" + keyword + "&select=" + select
		
		// page-link 클래스 전부 각각 함수 실행
		$('.page-link').each(function (index, item){
		
			// a태그 기존 url 가져옴
			var url = $(item).prop('href');
		
			// 기존 url에 파라미터 추가
			$(item).prop('href', url+href);
		});
	}
});

