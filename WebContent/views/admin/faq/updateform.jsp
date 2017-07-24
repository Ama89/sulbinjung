<%@page import="sulbinjung.dto.FaqDto"%>
<%@page import="sulbinjung.dao.FaqDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admins/faq/faqupdateform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/font-awesome.min.css" />
</head>
<body>
</head>
<body>
	<div class="container" style="margin-top:30px">
		<form action="update.do?num=${dto.num }" method="post">
			<div class="form-group"> <!-- Subject field -->
				<label class="control-label " for="title">FAQ 제목</label>
				<input class="form-control" id="title" name="title" type="text"
					value="${dto.title }"/>				
			</div>
			
			<div class="form-group"> <!-- Message field -->
				<label class="control-label " for="contents">FAQ 내용</label>
				<input class="form-control" id="contents" name="contents" type="text"
					value="${dto.contents }"/>				
			</div>
			
			<button type="submit" class="btn btn-default">확인</button> &nbsp;
			<button type="reset" class="btn btn-default">취소</button>
			
		</form>	
	</div>
</body>
</html>