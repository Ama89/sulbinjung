<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cPath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admins/faq/faqwriteform.jsp</title>
<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/font-awesome.min.css" />
</head>
<body>
	<div class="container" style="margin-top:30px">
		<form action="faqwrite.jsp" method="post">
			<div class="form-group"> <!-- Subject field -->
				<label class="control-label " for="title">Title</label>
				<input class="form-control" id="title" name="title" type="text"/>
			</div>
			
			<div class="form-group"> <!-- Message field -->
				<label class="control-label " for="contents">Contents</label>
				<textarea class="form-control" cols="40" id="contents" name="contents" rows="10"></textarea>
			</div>
			
			<div class="form-group">
				<button class="btn btn-primary " name="submit" type="submit">Submit</button>
			</div>
			
		</form>	
	</div>	
</body>
</html>