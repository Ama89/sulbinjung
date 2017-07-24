<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String cPath = request.getContextPath();
    String id=(String)session.getAttribute("id");
%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/sulbinjung.css" />
<style>
    /* 제목 폰트 */
	@font-face {
	  /*폰트 이름 설정*/
	  font-family: 'poetfont';
      src: url('<%=cPath %>/resource/fonts/poetfont.ttf') format('truetype');
    }
    /* 내용 폰트 */
    @font-face {
	  /*폰트 이름 설정*/
	  font-family: 'basicfont';
      src: url('<%=cPath %>/resource/fonts/DXKPMB-KSCpc-EUC-H.ttf') format('truetype');
    } 
    
    	/* CSS */
    .store_title{	
    	/*폰트 적용하기*/
    	font-family: poetfont;
    	font-size: 28px;
    	text-align: center;
    }
   
    #hr1{
    	width: 100%;
    	border: 1px solid #cecece;
    }
    
</style>
</head>

<body>
	<jsp:include page="../header.jsp"></jsp:include>
    
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
    <div class="container">
		<div class="row">    
    		
			<div class="col-xs-12" style="text-align:center;">   
				<p class="store_title">event<br/><strong>이벤트</strong></p>
				<hr id="hr1"> 
				<br/>
				
			</div>	
				
<!-- 검색 -->		

<form class="form-inline" action="list.do" method="post" 
		style="width: 300px; margin: 0 auto;">
	<select name="condition" id="condition">
		<option value="title">제목</option>
		<option value="content">내용</option>
	</select>
	<input class="form-control" value="${keyword }" type="text" name="keyword" placeholder="검색어"/>
	<button class="btn btn-default" type="submit">
		<span class="sr-only">검색</span>
		<span class="glyphicon glyphicon-search"></span>
	</button>
</form>

			
		</div>
	</div>
	    
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>