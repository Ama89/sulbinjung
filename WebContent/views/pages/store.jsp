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
    .store_title{
    	font-size: 25px;
    	text-align: center;
    }
    .store_title1{
    	font-size: 16px;
    	text-align: center;
    }
    
    .store_title1{
    	font-size: 16px;
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
    ul li{
    	list-style: none;
    	font-size: 16px;
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
				<p class="store_title">Store</p>
				<p class="store_title1">-강남점-</p>
				<hr id="hr1"> 
				<br/>
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
				<p>오시는 길</p>
				<br/><br/><br/>
				<div id="map" style="width:450px;height:350px;"></div>
				</div>
				
			<!-- 홍대점 소개 -->
				<div class="col-xs-12"  style="text-align:center;"> 
					<p class="store_title1">-홍대입구점-</p>
					<hr id="hr1"> 
					<br/>
					<br/>			
					<img id="img1" src="<%=cPath %>/resource/images/mu_13.png" alt="홍대점" />
					<br/><br/><br/><br/>				
					<ul id="content">
						<li><span>OPEN 11:30 CLOSE 23:00</span></li><br/>
						<li><span>TEL 02-719-1994</span></li><br/>
						<li><span>ADDRESS 서울 마포구 어울로마당로 44</span></li>
					</ul>
				</div>
				
				
			</div>
			
			<br/><br/><br/>
	</div>
	
		<script>
		var container = document.getElementById('map');
		var options = {
			center: new daum.maps.LatLng(37.502551, 127.027342),
			level: 3
		};

		var map = new daum.maps.Map(container, options);
	</script>
	    
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>