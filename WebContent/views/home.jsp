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
	<link rel="stylesheet" href="<%=cPath %>/resource/css/sulbinjung.css" />
	<link rel="stylesheet" href="<%=cPath %>/resource/css/bestmenu.css" />			
	
	<!-- jQuery -->
    <script src="<%=cPath %>/resource/js/jquery-3.2.0.js"></script>
	<!-- 플러그인 css 로딩하기 -->
	<link rel="stylesheet" href="<%=cPath %>/resource/css/fotorama.css"/>
	<!-- 플러그인 javascript 로딩-->
	<script src="<%=cPath %>/resource/js/fotorama.js"></script>
</head>

<body>

	<!-- main_상단navbar -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- main_왼쪽사이드메뉴 -->
	<jsp:include page="mainmenu.jsp"></jsp:include><br/><br/><br/>
	
	<!-- 로고이미지 -->		
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-3"></div>
			<div class="col-lg-6">				
				<img src="<%=cPath %>/resource/images/logo.png" alt="logoimages" />
			</div>
			<div class="col-lg-3"></div>
		</div>	
	</div>	
	<br/><br/><br/><br/><br/><br/>
	<!-- 메인 컨테이너 -->
	<div class="container">								
 	
 	<!-- about us -->
 	<div class="row" style="text-align: center; margin-top: 100px;"> 		 		
 		<h2><strong>About us</strong></h2>
 		<h6>술빈정 살펴보기</h6><br/> 	
	</div>
 	<jsp:include page="aboutus.jsp"></jsp:include>
 	<br/><br/><br/><br/><br/><br/><br/><br/>
 	
		<!--베스트메뉴-->
		<div class="row" style="text-align: center;"> 		 		
 		<h2><strong>Best Menu</strong></h2>
 		<h6>베스트 메뉴</h6><br/> 	
		</div>
		<div class="container" id="best_container">
		  	<div class="blog-posts">
			    <div class="post featured">	      
			        <div class="image" style="background-image: url(<%=cPath%>/resource/images/best1.png)">
			          <div class="sidediv">
			            <div class='time'>
			              <div class='date'>Best</div>
			              <div class='month'>01</div>
			            </div>
			          </div>
			        </div>
			        <div class="content">
			          <h3><strong>간장새우덮밥</strong></h3>
			          <p>간장새우를 밥에 넣어 김에 싸 먹는 맛이 일품입니다.</p>
				   </div>	      
			    </div>   	
		    	<br/><br/>
				<div class='row cf'>
			      	<div class='post'>	        
						<div class='image' style="background-image: url(<%=cPath%>/resource/images/best2.png)">
						  <div class='time'>
						    <div class='date'>Best</div>
						    <div class='month'>02</div>
						  </div>
						</div>
						<div class='content'>
						  <h3 style="font-size: 20px;"><strong>육회소바</strong></h3>
						  <p>시원한 육회소바와 튀김이 함께 제공됩니다.</p>	    
						</div>
			      	</div>
					<div class='post'>	        
					    <div class='image' style="background-image: url(<%=cPath%>/resource/images/best3.png)">
					      <div class='time'>
					        <div class='date'>Best</div>
					        <div class='month'>03</div>
					      </div>
					    </div>
					    <div class='content'>
					      <h3 style="font-size: 20px;"><strong>한방바베큐보쌈</strong></h3>
					      <p>보쌈은 겉은 바삭 속은 부드럽게 요리하여 한방소스로 졸여낸 메뉴입니다.</p>	    
					    </div>
					</div>
			        <div class='post'>	        
					    <div class='image' style="background-image: url(<%=cPath%>/resource/images/best4.png)">
					      <div class='time'>
					        <div class='date'>Best</div>
					        <div class='month'>04</div>
					      </div>
					    </div>
					    <div class='content'>
					      <h3 style="font-size: 20px;"><strong>골동반</strong></h3>
					      <p>영양소를 두루 갖춘 비빔밥입니다. (밥 리필 가능)</p>	    
					    </div>
					</div>
			   	</div>
			</div>
		</div>	
		<br/><br/><br/><br/><br/><br/>	
	</div>
	
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	
	<script>
	
	</script>
	
	<!-- jQuery -->
    <script src="<%= cPath %>/resource/js/jquery-3.2.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%= cPath %>/resource/js/bootstrap.min.js"></script>

</body>
</html>