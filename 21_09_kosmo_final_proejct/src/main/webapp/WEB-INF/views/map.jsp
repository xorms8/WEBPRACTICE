<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
<title>제목</title>
</head>
<body>
<div id = "root"> <!-- S: Index(Home).jsp 의 div 총괄 시작 -->
<!-- S: 헤더 부분 시작 -->
   <header id= "header">
      <div id = "header_box">
         <jsp:include page="/WEB-INF/views/include/header.jsp"/>
         <link rel="stylesheet" href="resources/css/map.css">
         <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
         <link rel="stylesheet" href="resources/css/slider.css">
		<link rel="stylesheet" href="resources/css/material-design-iconic-font.min.css">
      </div>
   </header>
   <!-- E: 헤더 부분 끝 -->
   
   
   <!-- S: 본문 영역 시작 -->
   
   <section id = "container">
      <div id = "container_box">
     <main>
    <!--? Hero Area Start-->
    <div class="slider-area hero-bg2 hero-overly">
        
    </div>
   


  <!-- listing Area Start -->
  
        
                <!--? Popular Directory Start -->
              <!-- 지도를 출력할 div 선언 -->
              <section class="section section-shop">
<div id="map" style=" width:100%;height:350px;"></div>
<!-- 매장 위도 경도 찍는 임시 버튼 -->
<div class="float">
<form name="search_form" id="search_form" class="form" onsubmit="return false">
					<input type="hidden" name="lat" id="lat" value="">
					<input type="hidden" name="lng" id="lng" value="">
					<h3 style="color:white">매장찾기</h3>
					<div class="shop_search">
						<input type="text" name="search_text" id="search_text" value="">
						<button type="button" onclick="textSearch();return false;" style="display: block;
    position: absolute; right: 0; top: 0; overflow: visible; padding: 0px; border: 0px; font-weight: normal;
    cursor: pointer;
    outline: none;
    background-color: transparent;"><img src="resources/img/map/btn_shop_search.gif" alt="검색" style="border: none;
    vertical-align: middle;"></button>
					</div>
					<p class="ex">- 롯데마트, 이마트, GS</p>
				</form>
<div class="shop_sort" style="overflow: hidden;outline: none;">

					<div class="area on" id="shopArea1" style="outline: none;" tabindex="1">
					<c:forEach items="${storeList}" var="storeList">
					
					
					<a href="#" class="box" onclick="storeMarker(${storeList.lon},${storeList.lat });return false;">
					<p class="subject">${storeList.shopName }</p>
					<p class="add">${storeList.address }</p>
					<c:if test="${not empty storeList.shopTelnum}" >
					<p class="tel">${storeList.shopTelnum }</p></a>
					</c:if>
					</a>
					
					
					</c:forEach>
					</div>

</div>
</div>

</section>
   <!-- E: 본문 영역 끝 -->

   

</div> <!-- E: Index(Home).jsp 의 div 총괄 끝  -->
</body>
</html>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f8a16e73608a4a6a4fe93cd542e3eb76"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//지도를 표시하는 div 크기를 변경하는 함수입니다
function resizeMap() {
    var mapContainer = document.getElementById('map');
    mapContainer.style.width = '650px';
    mapContainer.style.height = '650px'; 
}

function relayout() {    
    
    // 지도를 표시하는 div 크기를 변경한 이후 지도가 정상적으로 표출되지 않을 수도 있습니다
    // 크기를 변경한 이후에는 반드시  map.relayout 함수를 호출해야 합니다 
    // window의 resize 이벤트에 의한 크기변경은 map.relayout 함수가 자동으로 호출됩니다
    map.relayout();
}


//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = position.coords.latitude; // 위도 저장
        var lon = position.coords.longitude; // 위도
        
        var locPosition = new kakao.maps.LatLng(lat, lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다

        // 마커와 인포윈도우를 표시합니다
        displayMarker(locPosition);     
        
      });
    
} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
    
    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
        message = 'geolocation을 사용할수 없어요..'
        
    displayMarker(locPosition, message);
}

//지도에 마커와 인포윈도우를 표시하는 함수입니다
function displayMarker(locPosition) {

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({  
        map: map, 
        position: locPosition
    }); 
    
    // 지도 중심좌표를 접속위치로 변경합니다
    map.setCenter(locPosition);
    map.setLevel(7)

    
}    


// 새로 찍는 마커와 인포윈도우를 받을 배열 선언
var markers = [];
var infowindows = [];
//매장 위치 마커를 생성하는 함수
function displayStoreMarker(locPosition) {
	
	
	function setMarkers(map) {
	    for (var i = 0; i < markers.length; i++) {
	        markers[i].setMap(map);
	    }            
	}
	
	// setMarkers에 null을 입력하여 기존 마커 삭제
	setMarkers(null);
	
	var imageSrc = 'resources/img/map/map-marker-icon.png';
	var imageSize = new kakao.maps.Size(42, 42); // 마커이미지의 크기입니다
	var imageOption = {offset: new kakao.maps.Point(27, 69)};

	// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
	
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({  
        map: map, 
        position: locPosition,
        image: markerImage
        
    }); 
    
    // 지도 중심좌표를 매장위치로 변경합니다
    map.setCenter(locPosition);
    map.setLevel(7);
 
 	// 생성된 마커를 배열에 추가합니다
    markers.push(marker);	
    
}    
// 지도에 클릭 이벤트를 등록합니다
// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
function storeMarker(lat,lng) {        
    
	
    // 기본 위도 경도 설정
    var latlng = new kakao.maps.LatLng(lat, lng);
    
    // 매장명으로 DB검색하여 위도 경도 받아올 예정
    // DB에 위도 경도가 없으면 주소값으로 위도 경도 찾는 함수 사용하면 됨
    var locPosition = new kakao.maps.LatLng(latlng.getLat(), latlng.getLng());
      
    displayStoreMarker(locPosition)
    
};



</script>

                <!--? Popular Directory End -->
                <!--Pagination Start  -->
                <!--Pagination End  -->

</div>
<!-- listing-area Area End -->

    <!--? Want To work 02-->

    <!-- Want To work End -->
    <!--? Want To work 01-->
   <!-- E: 본문 영역 끝 -->
   
   
   <!-- S: 푸터 영역 시작 -->
</div> <!-- E: Index(Home).jsp 의 div 총괄 끝  -->
    <section class="container productlist">
    

		
    </section>
</body>
</html>