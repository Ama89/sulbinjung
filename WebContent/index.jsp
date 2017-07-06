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
	
	<!-- main_event_notice CSS -->
    <link href="css/portfolio-item.css" rel="stylesheet">
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
		<div class="row align" id="toplogo">
			<div class="col-xs-12">				
				<img src="<%=cPath %>/resource/images/logo.png" alt="logoimages" />
			</div>
		</div>	
	</div>	

	<!-- 메인 컨테이너 -->
	<div class="container">								
		<!-- 메인이미지 -->
		<div class="row align">	
			<div class="col-xs-12">			
				<img src="<%=cPath %>/resource/images/mu_3.png" alt="무월식탁가게정문" class="img-thumbnail">	
			</div>
		</div>
		
		<!-- 메뉴카테고리 -->
		<div class="row align" id="menu" style="margin-top:150px;">
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
	
	
	<!--베스트메뉴-->
	
	<!-- Page Content -->
	    <div class="container">
	   		 <div class="row">
			    <div class="col-md-9">		
			        <hr class="featurette-divider">
			
			        <!-- First Featurette -->
			        <div class="featurette" id="about">
			            <img class="featurette-image img-circle img-responsive pull-right" 
			            		src="<%=cPath %>/resource/images/menu_14.png">
			            <h2 class="featurette-heading">Best Menu 1
			               <!--<span class="text-muted">부연설명</span>--> 			           
			            </h2>
			            <p class="lead">Donec ullamcorper nulla non metus auctor fringilla.</p>
			        </div>
			
			        <hr class="featurette-divider">
			
			        <!-- Second Featurette -->
			        <div class="featurette" id="services">
			            <img class="featurette-image img-circle img-responsive pull-left" 
			            		src="<%=cPath %>/resource/images/menu_20.png">
			            <h2 class="featurette-heading">Best Menu 2
			               <!--<span class="text-muted">부연설명</span>--> 			           
			            </h2>
			            <p class="lead">Donec ullamcorper nulla non metus auctor fringilla.</p>
			        </div>
			
			        <hr class="featurette-divider">
			
			        <!-- Third Featurette -->
			        <div class="featurette" id="contact">
			            <img class="featurette-image img-circle img-responsive pull-right" 
			         	       src="<%=cPath %>/resource/images/menu_5.png">
			            <h2 class="featurette-heading">Best Menu3
			                <!--<span class="text-muted">부연설명</span>--> 			           
			            </h2>
			            <p class="lead">Donec ullamcorper nulla non metus auctor fringilla.</p>
			        </div>
			        	
			        <hr class="featurette-divider">
			    </div>
		    
			    <!-- 이벤트&공지사항 -->				
	            <div class="col-md-3">
		            <div class="row" id="event_notice">
		                <h3>Event</h3>	                
		                <ul >
		                    <li><a href="">Lorem Ipsum</a></li>
		                    <li><a href="">Lorem Ipsum</a></li>
		                    <li><a href="">Lorem Ipsum</a></li>
		                    <li><a href="">Lorem Ipsum</a></li>
		                </ul>
		             </div>
		             <div class="row" id="event_notice">
		                <h3>Notice</h3>	                
		                <ul>
		                    <li><a href="">Lorem Ipsum</a></li>
		                    <li><a href="">Lorem Ipsum</a></li>
		                    <li><a href="">Lorem Ipsum</a></li>
		                    <li><a href="">Lorem Ipsum</a></li>
		                </ul>
		             </div>
	            </div>	
	        </div>
	  	 </div>	     
	
	
		<!-- 소개  -->	
		
		<p style="font-size: 35px; text-align: center; margin-top:100px;">About us</p>
		</br>
		<div class="container">
			<div class="row align">
				<div class="col-xs-10 col-xs-push-1">
					<!--<p class="small_title">About us</p>-->
					<!--<p class="title">브랜드 소개</p> -->
					<p class="content1">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
					<!-- 이미지 자동 넘기기 (fotorama)-->
					<div class="fotorama" data-autoplay="true" data-allowfullscreen="true">
						<img src="resource/images/mu_4.png" alt="aboutus1"/>
						<img src="resource/images/mu_7.png" alt="aboutus2"/>
						<img src="resource/images/mu_8.png" alt="aboutus3"/>
						<img src="resource/images/mu_11.png" alt="aboutus4"/>
						<img src="resource/images/mu_16.png" alt="aboutus5"/>
						<img src="resource/images/mu_17.png" alt="aboutus6"/>
						<img src="resource/images/mu_19.png" alt="aboutus7"/>
						<img src="resource/images/mu_13.png" alt="aboutus8"/>
					</div>	
					<!-- 소개글 내용 -->
					<p class="content2"> 맛있는 밥 한그릇이 주는 따뜻한 힘을 믿습니다.</br>
					이 마음을 담아 준비합니다.</p>
				</div>			
			</div>
		</div>
		
	
	
	<jsp:include page="footer.jsp"></jsp:include>
	
	<!-- jQuery -->
    <script src="<%= cPath %>/resource/js/jquery-3.2.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%= cPath %>/resource/js/bootstrap.min.js"></script>

</body>
</html>