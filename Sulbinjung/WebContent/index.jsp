<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cPath = request.getContextPath();
	
	String id=(String)session.getAttribute("id");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>index.jsp</title>
	<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css" />
	<link rel="stylesheet" href="<%=cPath %>/resource/css/font-awesome.min.css" />
	<link rel="stylesheet" href="<%=cPath %>/resource/css/one-page-wonder.css" />
	<link rel="stylesheet" href="<%=cPath %>/resource/css/sulbinjung.css" />
	<!-- jQuery -->
    <script src="<%=cPath %>/resource/js/jquery-3.2.0.js"></script>
	<!-- 플러그인 css 로딩하기 -->
	<link rel="stylesheet" href="<%=cPath %>/resource/css/fotorama.css"/>
	<!-- 플러그인 javascript 로딩-->
	<script src="<%=cPath %>/resource/js/fotorama.js"></script>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>

	<!-- 로고이미지 -->		
	<div class="container-fluid">
		<div class="row" id="toplogo">	
			<div class="col-xs-12">				
				<img src="<%=cPath %>/resource/images/logo.png" alt="logoimages" />
			</div>
		</div>	
	</div>	

	<!-- 메인 컨테이너 -->
	<div class="container">								
		<!-- 메인이미지 -->
		<div class="row">	
			<div class="col-xs-12">			
				<img src="<%=cPath %>/resource/images/무월_1.png" alt="무월식탁가게정문" class="img-thumbnail">	
			</div>
		</div>
		
		<!-- 메뉴카테고리 -->
		<div class="row" id="menu">
			<div class="col-xs-12">
				<div class="btn-group btn-group-justified" role="group" aria-label="...">
					  <div class="btn-group" role="group">
					    	<a href="<%=cPath%>/pages/store.jsp"><button type="button" class="btn btn-default">Store</button></a>
					  </div>
					  <div class="btn-group" role="group">
					    	<a href="<%=cPath%>/pages/menu.jsp"><button type="button" class="btn btn-default">Menu</button></a>
					  </div>
					  <div class="btn-group" role="group">
					    	<a href="<%=cPath%>/pages/reservation.jsp"><button type="button" class="btn btn-default">reservation</button></a>
					  </div>
					  <div class="btn-group" role="group">
					    	<a href="<%=cPath%>/pages/review.jsp"><button type="button" class="btn btn-default">Review</button></a>
					  </div>
				</div>
			</div>
		</div>	
	</div>
	
	<!-- 소개  -->
	
		</br>
		</br>
		<p style="font-size: 30px; text-align: center;">SULBINJUNG</p>
		</br>
		<div class="container">
			<div class="row">
				<div class="col-xs-10 col-xs-push-1">
					<!-- 이미지 자동 넘기기 (fotorama)-->
					<div class="fotorama" data-autoplay="true" data-allowfullscreen="true">
						<img src="resource/images/홍대_무월_4.png" alt="aboutus1"/>
						<img src="resource/images/무월_23.png" alt="aboutus2"/>
						<img src="resource/images/무월_2.png" alt="aboutus3"/>
						<img src="resource/images/무월_5.png" alt="aboutus4"/>
						<img src="resource/images/무월_36.png" alt="aboutus5"/>
					</div>	
					<!-- 소개글 내용 -->
					<p class="content"> 맛있는 밥 한그릇이 주는 따뜻한 힘을 믿습니다.</br>
					이 마음을 담아 준비합니다.</p>
				</div>			
			</div>
		</div>
		
	<!--베스트메뉴-->
	
	<!-- Page Content -->
	    <div class="container">		
	        <hr class="featurette-divider">
	
	        <!-- First Featurette -->
	        <div class="featurette" id="about">
	            <img class="featurette-image img-circle img-responsive pull-right" 
	            		src="<%=cPath %>/resource/images/sulbinjung_8.png">
	            <h2 class="featurette-heading">Best Menu 1
	                <span class="text-muted">부연설명</span>
	            </h2>
	            <p class="lead">메뉴설명 :Donec ullamcorper nulla non metus auctor fringilla.</p>
	        </div>
	
	        <hr class="featurette-divider">
	
	        <!-- Second Featurette -->
	        <div class="featurette" id="services">
	            <img class="featurette-image img-circle img-responsive pull-left" 
	            		src="<%=cPath %>/resource/images/무월_3.png">
	            <h2 class="featurette-heading">Best Menu 2
	                <span class="text-muted">부연설명</span>
	            </h2>
	            <p class="lead">메뉴설명 :Donec ullamcorper nulla non metus auctor fringilla.</p>
	        </div>
	
	        <hr class="featurette-divider">
	
	        <!-- Third Featurette -->
	        <div class="featurette" id="contact">
	            <img class="featurette-image img-circle img-responsive pull-right" 
	         	       src="<%=cPath %>/resource/images/무월_7.png">
	            <h2 class="featurette-heading">Best Menu3
	                <span class="text-muted">부연설명</span>
	            </h2>
	            <p class="lead">메뉴설명 :Donec ullamcorper nulla non metus auctor fringilla.</p>
	        </div>
	        	
	        <hr class="featurette-divider">
	    </div>
	
	
	
	<!-- 이벤트&공지사항 -->
	<div class="row" id="hat1">Event & Notice</div>
			
	
	<jsp:include page="footer.jsp"></jsp:include>
	
	<!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>
</html>