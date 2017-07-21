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
    	width: 400px;
    	height: 320px;    	
    }
    ul li{
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
			<div class="col-xs-12">   
				<p class="store_title">Store</p>
				<p class="store_title1">-강남점-</p>
				<hr id="hr1"> 
				<br/>
				<br/>			
				<img class="col-xs-6" id="img1" src="<%=cPath %>/resource/images/mu_9.png" alt="홍대점" />
				<br/><br/><br/><br/>				
				<ul id="content" class="col-xs-push-2">
					<li><span>OPEN 11:00 CLOSE 23:00</span></li>
					<li><span>TEL 02-108-1994</span></li>
					<li><span>ADDRESS 서울 강남구 강남대로 102길 23</span></li>
				</ul>
				
				
				

				</div> 
			<!-- 홍대점 소개 -->
				<div class="col-xs-12"> 
				
					<p class="store_title1">-홍대입구점-</p>
					<hr id="hr1"> 
					<br/>
					<br/>			
					<img class="col-xs-6" id="img1" src="<%=cPath %>/resource/images/mu_13.png" alt="홍대점" />
					<br/><br/><br/><br/>				
					<ul id="content" class="col-xs-push-2">
						<li><span>OPEN 11:00 CLOSE 23:00</span></li>
						<li><span>TEL 02-108-1994</span></li>
						<li><span>ADDRESS 서울 강남구 강남대로 102길 23</span></li>
					</ul>
				</div>
			</div>
			
			<br/><br/><br/>
	</div>
	    
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>