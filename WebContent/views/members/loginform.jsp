<%@page import="sulbinjung.dao.MembersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String cPath = request.getContextPath();
	String url = request.getParameter("url");
	if(url==null){ //만일 없으면
		//인덱스 페이지로 이동 될 수 있도록 
		url=request.getContextPath();
	}
		
	String savedId="";

	Cookie[] cookies=request.getCookies();
	
	if(cookies != null && cookies.length > 0){
		for(Cookie tmp:cookies){
			if(tmp.getName().equals("savedId")){
				savedId=tmp.getValue();
			}
		}
	}	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/sulbinjung.css" />


</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- 로고이미지 -->        
	<div class="container-fluid">    
       <div class="row">    
			<div class="col-xs-12">                
				<img src="<%=cPath %>/resource/images/sulbinjung_logo.png" alt="logo"
                    style="width: 450px;
                    height: 220px;
                    display: block;
                    margin: 0 auto;
                    margin-top:50px; 
                    margin-bottom: 50px;"/>
			</div>
		</div>    
	</div>    
	
	<!-- contents -->
	<div class="container">
		<div class="row">
			<div class="col-lg-4"></div>
			<div class="col-lg-4">
				<form action="login.jsp?url=<%=url%>" method="post">			
				<br/>
				<hr style="border: 1.2px solid #cecece;">
				<br/>
					<!-- 아이디 입력 -->
					<div class="form-group">
						<label for="id">아이디</label>
						<input type="text" class="form-control" name="id" id="id" value="<%=savedId %>"/>
						<p class="help-block">반드시 입력하세요</p>
					</div>
	
					<!-- 비밀번호 입력 -->
					<div class="form-group">
						<label for="pwd">비밀번호</label>
						<input type="password" class="form-control" name="pwd" id="pwd"/>
					</div>
					<!-- 아이디 저장 -->
					<div class="checkbox">
						<label>
							<input type="checkbox" name="isSave" value="yes"/> 아이디 저장
						</label>
					</div>
					<!-- 버튼 -->
					<button type="submit" class="btn btn-default">로그인</button>
					<button type="reset" class="btn btn-default">취소</button>
				</form>	
			</div>				
		</div>
	</div>	
	<br/><br/><br/><br/><br/>
	
	<!-- footer -->	
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>