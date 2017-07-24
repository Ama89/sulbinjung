<%@page import="sulbinjung.dao.AdminDao"%>
<%@page import="sulbinjung.dto.AdminDto"%>
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
<title>admins/notice/writeform.jsp</title>
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
		<form action="write.do" method="post" enctype="multipart/form-data">
			<div class="form-group"> <!-- Subject field -->
				<label class="control-label " for="subject">Title</label>
				<input class="form-control" id="title" name="title" type="text"/>
			</div>
					
			<div class="form-group"> <!-- Name field -->
				<label class="control-label " for="name">Name</label>
				<input class="form-control" id="writer" name="writer" type="text" disabled="true" value="<%=id%>"/>
			</div>
			
			<div class="form-group"> <!-- Email field -->
				<label class="control-label requiredField" for="filepath">image<span class="asteriskField">*</span></label>
				<input class="form-control" id="filepath" name="filepath" type="file"/>
			</div>
			

			
			<div class="form-group"> <!-- Message field -->
				<label class="control-label " for="message">contents</label>
				<textarea class="form-control" cols="40" id="contents" name="contents" rows="10"></textarea>
			</div>
			
			<div class="form-group">
				<button class="btn btn-primary " name="submit" type="submit">Submit</button>
			</div>
			
		</form>	
	</div>	
	
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>