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
	<title>header.jsp</title>	
	<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css" />
	<link rel="stylesheet" href="<%=cPath %>/resource/css/header.css" />
	
	<!-- jQuery -->
    <script src="<%=cPath %>/resource/js/jquery-3.2.0.js"></script>	
</head>   

	<!-- 상단 네비게이션 (로그인/회원가입) -->
	<div class="container-fluid">
		<header>
			<nav class="navbar navbar-default tembus">
			  	<div class="container-fluid">			  	
					<div class="navbar-header">
					    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					    	<span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span> 
					    </button>   
				    	<a class="navbar-brand" href="<%=cPath %>/index.jsp">sulbinjung</a>
					</div> 					
			    	<div class="collapse navbar-collapse" id="myNavbar">
			      		<ul class="nav navbar-nav navbar-right">
		   					<%if(id == null){ %>
			   					<li><a href="<%=cPath %>/members/loginform.jsp?url=<%=cPath%>"  class="hvrcenter">
			   						<span class="glyphicon glyphicon-log-in"></span>&nbsp Login</a></li>
			    				<li><a href="<%=cPath %>/members/signupform.jsp?url=<%=cPath%>"  class="hvrcenter">
		    						<span class="glyphicon glyphicon-user"></span>&nbsp Signup</a></li>			    				
		    				<%}else{ %>
			    				<li><a href="<%=cPath %>/members/logout.jsp?url=<%=cPath%>"  class="hvrcenter">
			   						<span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
			    				<li><a href="<%=cPath %>/pages/mypage.jsp?url=<%=cPath%>"  class="hvrcenter">
		    						<span class="glyphicon glyphicon-user"></span>Mypage</a></li>
		    				<%} %>
		    				
			    				<li class="visible-xs"><a href="<%=cPath%>/pages/store.jsp" class="hvrcenter">Store</a></li>
								<li class="visible-xs"><a href="<%=cPath%>/pages/menu.jsp" class="hvrcenter">Menu</a></li>
								<li class="visible-xs"><a href="<%=cPath%>/pages/reservation.jsp" class="hvrcenter">Reservation</a></li>
								<li class="visible-xs"><a href="<%=cPath%>/pages/review.jsp" class="hvrcenter">Review</a></li>
								<li class="visible-xs"><a href="<%=cPath%>/pages/notice.jsp" class="hvrcenter">Notice</a></li>
							
						</ul>
			  	  	</div>
				</div>
			</nav>
		</header>
	</div>