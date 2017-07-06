<%@page import="sulbinjung.dao.AdminDao"%>
<%@page import="sulbinjung.dto.AdminDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cPath = request.getContextPath();
	String id=(String)session.getAttribute("id");
	AdminDto dto=AdminDao.getInstance().getData(id);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admins/notice/writeform.jsp</title>
<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/font-awesome.min.css" />
</head>
<body>
	<div class="container" style="margin-top:30px">
		<form action="fileServlet" method="post">
			<div class="form-group"> <!-- Subject field -->
				<label class="control-label " for="subject">Subject</label>
				<input class="form-control" id="subject" name="subject" type="text"/>
			</div>
					
			<div class="form-group"> <!-- Name field -->
				<label class="control-label " for="name">Name</label>
				<input class="form-control" id="name" name="name" type="text" disabled="true" value="<%=dto.getJob()%>"/>
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
</body>
</html>