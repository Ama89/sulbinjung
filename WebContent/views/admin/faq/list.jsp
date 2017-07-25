<%@page import="java.util.List"%>
<%@page import="sulbinjung.dao.FaqDao"%>
<%@page import="sulbinjung.dto.FaqDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String cPath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admins/faq/faqlist.jsp</title>
<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/sulbinjung.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/adminlist.css" />
</head>
<body>
	<jsp:include page="../../header.jsp"></jsp:include>
    
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

	<!-- contents -->
	<!-- admin_nav -->
	<nav class="navbar navbar-default navbar-static-top">	
	    <div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<!-- nav_right menu -->
				<button type="button" class="navbar-toggle navbar-toggle-sidebar collapsed">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				
				<!-- nav_left_brand -->
				<a class="navbar-brand" href="#">
					Administrator
				</a>
			</div>
		</div><!-- /.container-fluid -->
	</nav>  	
	
	<div class="container-fluid main-container">
		<!-- left_sidebar -->
  		<div class="col-md-2 sidebar">
  			<div class="row">
			<!-- uncomment code for absolute positioning tweek see top comment in css -->
			<div class="absolute-wrapper"> </div>
		<!-- Menu -->
		<div class="side-menu">
			<nav class="navbar navbar-default" role="navigation">
				<!-- Main Menu -->
				<div class="side-menu-container">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#"><span class="glyphicon glyphicon-dashboard"></span> Dashboard</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-plane"></span> Active Link</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-cloud"></span> Link</a></li>
	
						<!-- Dropdown-->
						<li class="panel panel-default" id="dropdown">
							<a data-toggle="collapse" href="#dropdown-lvl1">
								<span class="glyphicon glyphicon-user"></span> Sub Level <span class="caret"></span>
							</a>
	
							<!-- Dropdown level 1 -->
							<div id="dropdown-lvl1" class="panel-collapse collapse">
								<div class="panel-body">
									<ul class="nav navbar-nav">
										<li><a href="#">Link</a></li>
										<li><a href="#">Link</a></li>
										<li><a href="#">Link</a></li>
	
										<!-- Dropdown level 2 -->
										<li class="panel panel-default" id="dropdown">
											<a data-toggle="collapse" href="#dropdown-lvl2">
												<span class="glyphicon glyphicon-off"></span> Sub Level <span class="caret"></span>
											</a>
											<div id="dropdown-lvl2" class="panel-collapse collapse">
												<div class="panel-body">
													<ul class="nav navbar-nav">
														<li><a href="#">Link</a></li>
														<li><a href="#">Link</a></li>
														<li><a href="#">Link</a></li>
													</ul>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</li>	
						<li><a href="#"><span class="glyphicon glyphicon-signal"></span> Link</a></li>	
					</ul>
				</div><!-- /.navbar-collapse -->
			</nav>
		</div>
	</div>
</div>  		
	
	<!-- 구현할 부분 -->
  	<div class="col-md-10 content">
  		<!-- 패널 -->
		<div class="panel panel-default">
			<div class="panel-heading">title</div>
			<div class="panel-body">
			<!-- content_back.from_back -->
			<a href="writeform.do">글쓰기</a>	
				<table>
					<thead>
						<tr>
							<th>FAQ 번호</th>
							<th>FAQ 제목</th>
							<th>FAQ 내용</th>	
							<th>FAQ 수정</th>
							<th>FAQ 삭제</th>		
						</tr>
					</thead>
					<tbody>
					<c:forEach var="tmp" items="${list }">
						<tr>
							<td>${tmp.num }</td>
							<td><a href="detail.do?num=${tmp.num }">${tmp.title }</a></td>
							<td>${tmp.contents }</td>
							<td><a href="updateform.do?num=${tmp.num }">수정</a></td>
							<td><a href="delete.do?num=${tmp.num }">삭제</a></td>				
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
  	</div>
	
	<jsp:include page="../../footer.jsp"></jsp:include>
	
	<!-- jQuery -->
    <script src="<%= cPath %>/resource/js/jquery-3.2.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%= cPath %>/resource/js/bootstrap.min.js"></script>
	<script>
		$(function () {
		  	$('.navbar-toggle-sidebar').click(function () {
		  		$('.navbar-nav').toggleClass('slide-in');
		  		$('.side-body').toggleClass('body-slide-in');
		  		$('#search').removeClass('in').addClass('collapse').slideUp(200);
		  	});
	
		  	$('#search-trigger').click(function () {
		  		$('.navbar-nav').removeClass('slide-in');
		  		$('.side-body').removeClass('body-slide-in');
		  		$('.search-input').focus();
		  	});
		  });
	</script>
</body>
</html>