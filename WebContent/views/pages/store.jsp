<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String cPath = request.getContextPath();
    String id=(String)session.getAttribute("id");
%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=273671b159b0900cfc107554fc578457"></script>
<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/sulbinjung.css" />

<style>
	/* 폰트 */
	@font-face {
	  /*폰트 이름 설정*/
	  font-family: 'poetfont';
      src: url('<%=cPath %>/resource/fonts/poetfont.ttf') format('truetype');
    }
    
    @font-face {
	  /*폰트 이름 설정*/
	  font-family: 'basicfont';
      src: url('<%=cPath %>/resource/fonts/DXKPMB-KSCpc-EUC-H.ttf') format('truetype');
    }
    
     @font-face {
	  /*폰트 이름 설정*/
	  font-family: 'titlefont';
      src: url('<%=cPath %>/resource/fonts/wkr고직.ttf') format('truetype');
    }

	/* CSS */
    .store_title{	
    	/*폰트 적용하기*/
    	font-family: poetfont;
    	font-size: 35px;
    	text-align: center;
    }
    .store_title1{
    	font-family: poetfont;
    	font-size: 28px;
    	font-
    	text-align: center;
    }
    
    #hr1{
    	width: 100%;
    	border: 1px solid #cecece;
    }
    
    #img1{
    	width: 500px;
    	height: 400px;    	
    }
    #content > li{
    	font-family: basicfont;
    	list-style: none;
    	font-size: 16px;
    }
    
    #map_content > li{
   		font-family: basicfont;
   		font-size: 16px;
    	list-style: none;
    }
    
</style>
</head>

<body>
	<jsp:include page="../header.jsp"></jsp:include>
    
	<!-- 로고이미지 -->        
	<div class="container-fluid">    
       <div class="row">    
			<div class="col-xs-12">                
				<img src="<%=cPath %>/resource/images/sulbinjung_logo.png" alt="logo" class="logo" 
                     style="width: 450px;
                    height: 220px;
                    display: block;
                    margin: 0 auto;
                    margin-top:50px;" />
			</div>
		</div>    
	</div>    

   <!-- 메인 컨테이너 -->
    <div class="container">
    <div class="row">    
    		<!-- 강남점 소개 -->
			<div class="col-xs-12" style="text-align:center;">   
				<p class="store_title">store</p>
				<hr id="hr1"> 
				<p class="store_title1">강남점 </p>
				<br/>	
				<img id="img1" src="<%=cPath %>/resource/images/mu_9.png" alt="홍대점" />
				<br/><br/><br/><br/>			
				<ul id="content">
					<li><span>OPEN 11:00 CLOSE 23:00</span></li><br/>
					<li><span>TEL 02-108-1994</span></li><br/>
					<li><span>ADDRESS 서울 강남구 강남대로 102길 23</span></li>
				</ul>
				
				</div> 
				
				<div class="col-xs-12">
					<br/>
					<p style="font-family:poetfont; font-size:25px;">location</p>
					<br/><br/><br/>
					<div class="col-xs-6">
						<div id="map" style="width:450px;height:350px;"></div>	
					</div>
					<br/>
					<br/>
						<ul id="map_content" calss="col-xs-push-8">
								<li><span>서울시 강남구 역삼동 812-15번지</span></li><br/>
								<li><span>강남역 11번출구 10분거리</span></li><br/>
								<li><span>신논현역 5번출구 5분거리</span></li>
						</ul>
						
				</div>
				
				
			<!-- 홍대점 소개 -->
			<div class="col-xs-12"  style="text-align:center;">
			<br/><br/> 
				<hr id="hr1"> 
					<p class="store_title1">홍대입구점</p>
					<br/>		
					<img id="img1" src="<%=cPath %>/resource/images/mu_13.png" alt="홍대점" />
					<br/><br/><br/><br/>				
					<ul id="content">
						<li><span>OPEN 11:30 CLOSE 23:00</span></li><br/>
						<li><span>TEL 02-719-1994</span></li><br/>
						<li><span>ADDRESS 서울 마포구 어울로마당로 44</span></li>
					</ul>
				</div>
				
				<div class="col-xs-12">
					<br/>
					<p style="font-family:poetfont; font-size:25px;">location</p>
					<br/><br/><br/>
					<div class="col-xs-6">
						<div id="map2" style="width:450px;height:350px;"></div>	
					</div>
					<br/>
						<ul id="map_content" calss="col-xs-push-8">
								<li><span>상수역 1번 출구 도보 5분</span></li><br/>
								<li><span>합정역 6번 출구 도보 11분</span></li><br/>
						</ul>
						
				</div>
				
				
			</div>
			
			<br/><br/><br/>
	</div>
	<!-- 강남점 지도 설정 -->
		<script>
		var container = document.getElementById('map');
		var options = {
			center: new daum.maps.LatLng(37.502551, 127.027342),
			level: 3
		};
		
		var map = new daum.maps.Map(container, options);
		
		// 지도를 클릭한 위치에 표출할 마커입니다
		var marker = new daum.maps.Marker({ 
		    // 지도 중심좌표에 마커를 생성합니다 
		    position: map.getCenter() 
		}); 
		// 지도에 마커를 표시합니다
		marker.setMap(map);
		
		// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		var zoomControl = new daum.maps.ZoomControl();
		map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

		// 지도가 확대 또는 축소되면 마지막 파라미터로 넘어온 함수를 호출하도록 이벤트를 등록합니다
		daum.maps.event.addListener(map, 'zoom_changed', function() {        
		    
		    // 지도의 현재 레벨을 얻어옵니다
		    var level = map.getLevel();
		    
		    var message = '현재 지도 레벨은 ' + level + ' 입니다';
		    var resultDiv = document.getElementById('result');  
		    resultDiv.innerHTML = message;
		    
		});

	</script>
	<!-- 홍대입구점 지도 설정 -->
	<script>
		var container = document.getElementById('map2');
		var options = {
			center: new daum.maps.LatLng(37.549019, 126.920863),
			level: 3
		};
		
		var map = new daum.maps.Map(container, options);
		
		// 지도를 클릭한 위치에 표출할 마커입니다
		var marker = new daum.maps.Marker({ 
		    // 지도 중심좌표에 마커를 생성합니다 
		    position: map.getCenter() 
		}); 
		// 지도에 마커를 표시합니다
		marker.setMap(map);
		
		// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		var zoomControl = new daum.maps.ZoomControl();
		map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

		// 지도가 확대 또는 축소되면 마지막 파라미터로 넘어온 함수를 호출하도록 이벤트를 등록합니다
		daum.maps.event.addListener(map, 'zoom_changed', function() {        
		    
		    // 지도의 현재 레벨을 얻어옵니다
		    var level = map.getLevel();
		    
		    var message = '현재 지도 레벨은 ' + level + ' 입니다';
		    var resultDiv = document.getElementById('result');  
		    resultDiv.innerHTML = message;
		    
		});
		
	</script>
	    
	    
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>