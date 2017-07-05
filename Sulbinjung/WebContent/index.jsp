<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cPath = request.getContextPath();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" href="resource/css/bootstrap.css" />
<style>
	.container{		
		border : 1px dotted blue;
	}
	
	.row > div{
		border: 1px dotted black;
	}
	#footer{
		height: 200px;
		padding-top: 20px;
	}
	.row{
		text-align: center;
		font-size: 20px;
	}
	#hat1{
		margin: 10px auto;		
	}
	#hat2{
		background-color: black;
	}
	
</style>
</head>
<body>


	<!-- 상단 네비게이션 (로그인/회원가입) -->
	<div class="navbar navbar-inverse">
		<a class="navbar-link navbar-text pull-right" href="#">Signup</a>
		<a class="navbar-link navbar-text pull-right" href="<%=cPath %>/members/loginform.jsp?url=<%=cPath%>">Login</a>		
	</div>


	<div class="container">
	
		<!-- 로고 -->			
		<div class="row" id="hat">	
			<div class="col-xs-12">SulbinJung</div>	
		</div>
					
		<!-- 메인이미지 -->
		<div class="row">	
			<div class="col-xs-12">			
				<img src="resource/images/무월_1.png" alt="무월식탁가게정문" class="img-thumbnail">	
			</div>
		</div>
		
		<!-- 메뉴카테고리 -->
		<div class="row">
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
		
		<!-- 베스트메뉴_(썸네일) -->
		<div class="row" id="hat">Best Menu</div>
		
		<div class="row">
			<div class="col-xs-6 col-md-3">
			    <a href="#" class="thumbnail">
			      <img src="resource/images/무월_3.png" alt="메뉴_새우장">
			    </a>
			</div>
			<div class="col-xs-6 col-md-3">
			    <a href="#" class="thumbnail">
			      <img src="resource/images/무월_13.png" alt="메뉴_비빔밥">
			    </a>
			</div>
			<div class="col-xs-6 col-md-3">
			    <a href="#" class="thumbnail">
			      <img src="resource/images/무월_15.png" alt="메뉴_수육">
			    </a>
			</div>
			<div class="col-xs-6 col-md-3">
			    <a href="#" class="thumbnail">
			      <img src="resource/images/무월_16.png" alt="메뉴_육회냉면">
			    </a>
			</div>
		</div>
		
		<!-- 이벤트&공지사항 -->
		<div class="row" id="hat1">Event & Notice</div>
			<div class="row" id="hat2">	
				<div class="col-xs-12">			
					<img src="resource/images/event_notice.png" alt="무월식탁가게정문" class="img-thumbnail">	
				</div>
			</div>
	</div>				
			
	<!-- footer -->
	<div class="container-fluid" >
			<div class="row">
			<div class="col-xs-12" id="footer">footer</div>
		</div>	
	</div>
</body>
</html>

