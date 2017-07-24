<%@page import="sulbinjung.dto.FaqDto"%>
<%@page import="sulbinjung.dao.FaqDao"%>
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
<title>admins/faq/faqpage.jsp</title>
<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/sulbinjung.css" />
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
                    margin-top:50px;" />
			</div>
		</div>    
	</div>    

   <!-- 메인 컨테이너 -->
	<div class="container" style="margin-top:30px">
		<form action="faqwrite.jsp" method="post">
			<div class="form-group"> <!-- Subject field -->
				<label class="control-label " for="title">FAQ 제목</label>
				${dto.title }
			</div>
			
			<div class="form-group"> <!-- Message field -->
				<label class="control-label " for="contents">FAQ 내용</label>
				${dto.contents }
			</div>
			
			<div class="form-group">
				<a href="list.do">목록보기</a>
			</div>
			
		</form>	
	</div>
	
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>