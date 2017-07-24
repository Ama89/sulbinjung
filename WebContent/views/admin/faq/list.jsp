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
   <div class="container">
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
	
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>