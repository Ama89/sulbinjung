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
					    	<button type="button" class="btn btn-default">About us</button>
					  </div>
					  <div class="btn-group" role="group">
					    	<button type="button" class="btn btn-default">Menu</button>
					  </div>
					  <div class="btn-group" role="group">
					    	<button type="button" class="btn btn-default">Event</button>
					  </div>
					  <div class="btn-group" role="group">
					    	<button type="button" class="btn btn-default">Notice</button>
					  </div>
					  <div class="btn-group" role="group">
					    	<button type="button" class="btn btn-default">Contact us</button>
					  </div>
				</div>
			</div>
		</div>	
	</div>
		
	<!--베스트메뉴-->
	
	<!-- Page Content -->
	    <div class="container">		
	        <hr class="featurette-divider">
	
	        <!-- First Featurette -->
	        <div class="featurette" id="about">
	            <img class="featurette-image img-circle img-responsive pull-right" src="http://placehold.it/500x500">
	            <h2 class="featurette-heading">Best Menu 1
	                <span class="text-muted">부연설명</span>
	            </h2>
	            <p class="lead">메뉴설명 :Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
	        </div>
	
	        <hr class="featurette-divider">
	
	        <!-- Second Featurette -->
	        <div class="featurette" id="services">
	            <img class="featurette-image img-circle img-responsive pull-left" src="http://placehold.it/500x500">
	            <h2 class="featurette-heading">Best Menu 2
	                <span class="text-muted">부연설명</span>
	            </h2>
	            <p class="lead">메뉴설명 :Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper.</p>
	        </div>
	
	        <hr class="featurette-divider">
	
	        <!-- Third Featurette -->
	        <div class="featurette" id="contact">
	            <img class="featurette-image img-circle img-responsive pull-right" src="http://placehold.it/500x500">
	            <h2 class="featurette-heading">Best Menu3
	                <span class="text-muted">부연설명</span>
	            </h2>
	            <p class="lead">메뉴설명 :Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper.</p>
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