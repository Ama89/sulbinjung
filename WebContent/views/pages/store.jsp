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
	/* 제목 폰트 */
	@font-face {
	  /*폰트 이름 설정*/
	  font-family: 'poetfont';
      src: url('<%=cPath %>/resource/fonts/poetfont.ttf') format('truetype');
    }
    /* 내용 폰트 */
    @font-face {
	  /*폰트 이름 설정*/
	  font-family: 'basicfont';
      src: url('<%=cPath %>/resource/fonts/DXKPMB-KSCpc-EUC-H.ttf') format('truetype');
    }
 
	/* CSS */
    .store_title{	
    	/*폰트 적용하기*/
    	font-family: poetfont;
    	font-size: 28px;
    	text-align: center;
    }
    .store_title1{
    	font-family: poetfont;
    	font-size: 25px;
    	text-align: center; 
    }
    
    #hr1{
    	width: 100%;
    	border: 1px solid #cecece;
    }
    
    #content > li{
    	font-family: basicfont;
    	list-style: none;
    	font-size: 17px; 
    }
    
    #map_content > li{
   		font-family: basicfont;
   		font-size: 17px;
    	list-style: none;
    }
    
</style>
</head>
<!-- jQuery -->
<script src="<%= cPath %>/resource/js/jquery-3.2.0.js"></script>

 <!-- Bootstrap Core JavaScript -->
<script src="<%= cPath %>/resource/js/bootstrap.min.js"></script>
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
                    margin-top:50px;
                    margin-bottom:100px;" />
			</div>
		</div>    
	</div>    

   <!-- 메인 컨테이너 -->
    <div class="container">
    <div class="row">    
    		<!-- 강남점 소개 -->
			<div class="col-xs-12" style="text-align:center;">   
				<p class="store_title">store<br/><strong>매장안내</strong></p>
				<hr id="hr1"> 
				<p class="store_title1">강남점 </p>
				<br/>
				<!-- 강남점 매장사진 Carousel1 -->
				<div class="col-xs-8 col-xs-push-2">
					<div id="storeCarousel" class="carousel slide carousel-fade" data-ride="carousel" date-interval="3000">
						<ol class="carousel-indicators">
							<li data-target="#storeCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#storeCarousel" data-slide-to="1"></li>
							<li data-target="#storeCarousel" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
							<img class="img-responsive" id="img1" src="<%=cPath %>/resource/images/mu_9.png" alt="강남" />
							</div>
							<div class="item">
							<img class="img-responsive" id="img1" src="<%=cPath %>/resource/images/mu_7.png" alt="강남" />
							</div>
							<div class="item">
							<img class="img-responsive" id="img1" src="<%=cPath %>/resource/images/mu_10.png" alt="강남" />
							</div>
						</div>
						<a href="#storeCarousel" class="left carousel-control" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left"></span>
						<span class="sr-only">이전</span>
						</a>
						<a href="#storeCarousel" class="right carousel-control" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right"></span>
						<span class="sr-only">다음</span>
						</a>
					</div>
				</div>	
				<!-- 강남점 매장 정보 -->
				<div class="col-xs-12">
				<div class="box" style="width: 100%; height: 70px;"></div>			
				<ul id="content">
					<li><span>OPEN 11:00 CLOSE 23:00</span></li><br/>
					<li><span>TEL 02-108-1994</span></li><br/>
					<li><span>ADDRESS 서울 강남구 강남대로 102길 23</span></li>
				</ul>
				</div>
		</div> 
		
		
				<div class="box" style="width: 100%; height: 50px;"></div>
				<!-- 강남점 지도 -->
				<p style="font-family:poetfont; font-size:25px; text-align: center;">location</p>
				<div class="col-xs-12">
						<br/>
						<div id="map" style="width:600px;height:450px; margin: 0 auto;"></div>
						<div class="box" style="width: 100%; height: 50px;"></div>
						<!-- 강남점 위치 정보 -->
						<ul id="map_content" calss="col-xs-push-8" style="text-align: center;">
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
					<!-- 홍대입구 매장 사진 Carousel2 -->
				<div class="col-xs-8 col-xs-push-2">
					<div id="storeCarousel2" class="carousel slide carousel-fade" data-ride="carousel" date-interval="3000">
						<ol class="carousel-indicators">
							<li data-target="#storeCarousel2" data-slide-to="0" class="active"></li>
							<li data-target="#storeCarousel2" data-slide-to="1"></li>
							<li data-target="#storeCarousel2" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
							<img class="img-responsive" id="img1" src="<%=cPath %>/resource/images/mu_15.png" alt="강남" />
							</div>
							<div class="item">
							<img class="img-responsive" id="img1" src="<%=cPath %>/resource/images/mu_17.png" alt="강남" />
							</div>
							<div class="item">
							<img class="img-responsive" id="img1" src="<%=cPath %>/resource/images/mu_11.png" alt="강남" />
							</div>
						</div>
						<a href="#storeCarousel2" class="left carousel-control" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left"></span>
						<span class="sr-only">이전</span>
						</a>
						<a href="#storeCarousel2" class="right carousel-control" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right"></span>
						<span class="sr-only">다음</span>
						</a>
					</div>
				</div>	
				<!-- 홍대입구점 매장 정보 -->
				<div class="col-xs-12">	
					<div class="box" style="width: 100%; height: 70px;"></div>			
					<ul id="content">
						<li><span>OPEN 11:30 CLOSE 23:00</span></li><br/>
						<li><span>TEL 02-719-1994</span></li><br/>
						<li><span>ADDRESS 서울 마포구 어울로마당로 44</span></li>
					</ul>
				</div>
			</div>
			<div class="box" style="width: 100%; height: 150px;"></div>
			
			<div class="box" style="width: 100%; height: 50px;"></div>
			<!-- 홍대입구 지도 -->
				<p style="font-family:poetfont; font-size:25px; text-align: center;">location</p>
				<div class="col-xs-12">
					<div id="map2" style="width:600px;height:450px; margin:0 auto;"></div>	
					<div class="box" style="width: 100%; height: 50px;"></div>
						<!-- 홍대입구 위치정보 -->
						<ul id="map_content" calss="col-xs-push-8" style="text-align: center;">
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