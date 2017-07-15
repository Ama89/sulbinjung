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
	<jsp:include page="mainmenu.jsp"></jsp:include>
	
	<!-- 로고이미지 -->		
	<div class="container-fluid">
		<div class="row align">
			<div class="col-xs-12">				
				<img src="<%=cPath %>/resource/images/logo.png" alt="logoimages" />
			</div>
		</div>	
	</div>	

	<!-- 메인 컨테이너 -->
	<div class="container">								

	<!--베스트메뉴-->
	<div class="container" id="best_container">
	  	<div class="blog-posts">
		    <div class="post featured">	      
		        <div class="image" style="background-image: url(<%=cPath%>/resource/images/mu_4.png)">
		          <div class="sidediv">
		            <div class='time'>
		              <div class='date'>Best</div>
		              <div class='month'>01</div>
		            </div>
		          </div>
		        </div>
		        <div class="content">
		          <h1>Best Menu1</h1>
		          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas illo tempore at eveniet adipisci harum error deserunt in sint aspernatur magni asperiores explicabo corporis ratione praesentium illum magnam esse ipsa dignissimos quaerat perferendis dolor vero? Maiores hic modi optio eaque...</p>
			   </div>	      
		    </div>   	
	    	
			<div class='row cf'>
		      	<div class='post'>	        
					<div class='image' style="background-image: url(<%=cPath%>/resource/images/menu_1.png)">
					  <div class='time'>
					    <div class='date'>Best</div>
					    <div class='month'>02</div>
					  </div>
					</div>
					<div class='content'>
					  <h3>Best Menu2</h3>
					  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam a nostrum nihil nulla hic laborum illum...</p>	    
					</div>
		      	</div>
				<div class='post'>	        
				    <div class='image' style="background-image: url(<%=cPath%>/resource/images/menu_2.png)">
				      <div class='time'>
				        <div class='date'>Best</div>
				        <div class='month'>03</div>
				      </div>
				    </div>
				    <div class='content'>
				      <h3>Best Menu3</h3>
				      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam a nostrum nihil nulla hic laborum illum...</p>	    
				    </div>
				</div>
		        <div class='post'>	        
				    <div class='image' style="background-image: url(<%=cPath%>/resource/images/menu_3.png)">
				      <div class='time'>
				        <div class='date'>Best</div>
				        <div class='month'>04</div>
				      </div>
				    </div>
				    <div class='content'>
				      <h3>Best Menu4</h3>
				      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam a nostrum nihil nulla hic laborum illum...</p>	    
				    </div>
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
		</div>
	
	
	<jsp:include page="footer.jsp"></jsp:include>
	
	<script>
	
	</script>
	
	<!-- jQuery -->
    <script src="<%= cPath %>/resource/js/jquery-3.2.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%= cPath %>/resource/js/bootstrap.min.js"></script>

</body>
</html>