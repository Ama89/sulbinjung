<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
    .galleryList > ul > li{
    	list-style: none;
    }
    
    .grid{
    	display: inline-block;
    	margin: 0 auto;
    	margin: 15px;
    }
    
    .content_title{
    	color: black;
    	list-style: none;
    	font-family: basicfont;
    	font-size: 16px;
    }
    
    .pagination > li{
    	display: inline;
    	width: 300px;
    	margin: 0 auto;
    }
    
    .pag{
    	position: absolute;
    	width: 100%;
		text-align: center;
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
				<!-- 검색 -->		
				
				<form class="form-inline" action="list.do" method="post" 
						style="width: 400px; margin: 0 auto;">
					<select class="form-control" name="condition" id="condition">
						<option value="title">제목</option>
						<option value="content">내용</option>
					</select>
					<input class="form-control" value="${keyword }" type="text" name="keyword" placeholder="검색어"/>
					<button class="btn btn-default" type="submit">
						<span class="sr-only">검색</span>
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</form>
				<br/>
				<br/>
				
				<!-- 게시물 리스트 -->
				<div class="contents">
					<div class="galleryList">
						<ul>
							<!-- 첫번째 이벤트 게시물 -->
							<li class="grid">
								<a href="">
								<img src="<%=cPath %>/resource/images/event1.jpg" alt="맥주이벤트" width="290" height="" />

								<div class="info">
									<a href="">
										<div class="content_title">sulbinjung 시원한 여름나기</div>
									</a>
								</div>
								</a>
							</li>
							
							<!-- 두번째 이벤트 게시물 -->
							<li class="grid">
								<a href="">
								<img src="<%=cPath %>/resource/images/event2.jpg" alt="화이트데이 이벤트" width="290" height="" />
								<div class="info">
									<a href="">
										<div class="content_title">선물의 크기보다 마음의 크기가 중요해요<br/>
										</div>
									</a>
								</div>
								</a>
							</li>
							
							<!-- 세번째 이벤트 게시물 -->
							<li class="grid">
								<a href="">
								<img src="<%=cPath %>/resource/images/event3.jpg" alt="화이트데이 이벤트" width="290" height="" />
								<div class="info">
									<a href="">
										<div class="content_title">공연 이벤트<br/>
										</div>
									</a>
								</div>
								</a>
							</li>
						</ul>
					</div>
				</div> <!-- 게시물 -->		
			</div>			
		</div>
	 </div><!-- 메인 컨테이너 -->
	 
	 <!-- 페이징 처리에 관련된 UI -->
	<div class="pag">
		<ul class="pagination">
			<!-- 이전버튼 -->
			<li>
				<c:choose>
					<c:when test="${startPageNum ne 1 }">
						<a href="event.do?pageNum=${startPageNum-1 }">이전</a>
					</c:when>
					<c:otherwise>
						<a class="muted" href="javascript:">이전</a>
					</c:otherwise>
				</c:choose>
			</li>	
			<li><a href="event.do?pageNum=1">1</a></li>
			<li><a href="event.do?pageNum=2">2</a></li>
			<li><a href="event.do?pageNum=3">3</a></li>
			<!-- 다음버튼 -->
			<li>
				<c:choose>
				<c:when test="${endPageNum lt totalPageCount }">
					<a href="event.do?pageNum=${endPageNum+1 }">다음</a>
				</c:when>
				<c:otherwise>
					<a class="muted" href="javascript:">다음</a>
				</c:otherwise>
			</c:choose>
			</li>
		</ul>		
	  </div>
	  <br/>
	  <br/>
	  <br/>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>