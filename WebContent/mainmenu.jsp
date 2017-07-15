<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cPath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>mainmenu.jsp</title>
</head>
<link rel="stylesheet" href="<%=cPath %>/resource/css/mainmenu.css" />	
<body>
	<!-- 메뉴리뉴얼 -->
	<div class="container-fluid">
		<div class="row">			
			<div class="hidden-xs">
				<ul id="mainmenu_ul">
				  <li id="mainmenu_li"><a href="<%=cPath%>/pages/store.jsp">Store</a></li>
				  <li id="mainmenu_li"><a href="<%=cPath%>/pages/menu.jsp">Menu</a></li>
				  <li id="mainmenu_li"><a href="<%=cPath%>/pages/reservation.jsp">Reservation</a></li>
				  <li id="mainmenu_li"><a href="<%=cPath%>/pages/review.jsp">Review</a></li>
				  <li id="mainmenu_li"><a href="<%=cPath%>/pages/notice.jsp">Notice</a></li>
				</ul>	   
			</div>     
		</div>
	</div>

	<!-- jQuery -->
    <script src="<%= cPath %>/resource/js/jquery-3.2.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%= cPath %>/resource/js/bootstrap.min.js"></script>
</body>
</html>