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
 	<div class="row" style="text-align: center;"> 		 		
 		<h2> About us <br/><h6>술빈정 살펴보기</h6></h2><br/> 	
	</div>
 	<jsp:include page="aboutus.jsp"></jsp:include>
 	<br/><br/><br/><br/><br/><br/><br/><br/>
 	
		<!--베스트메뉴-->
		<div class="row" style="text-align: center;"> 		 		
 		<h2> Best Menu <br/><h6>베스트 메뉴</h6></h2><br/> 	
		</div>
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
			          <h3>Best Menu1</h3>
			          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas illo tempore at eveniet adipisci harum error deserunt in sint aspernatur magni asperiores explicabo corporis ratione praesentium illum magnam esse ipsa dignissimos quaerat perferendis dolor vero? Maiores hic modi optio eaque...</p>
				   </div>	      
			    </div>   	
		    	<br/><br/>
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