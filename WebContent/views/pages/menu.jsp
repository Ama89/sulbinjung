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
<title>/pages/menu.jsp</title>
<link rel="stylesheet" href="<%=cPath %>/resource/css/bootstrap.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/sulbinjung.css" />
<link rel="stylesheet" href="<%=cPath %>/resource/css/menu.css" />
    
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
                     margin-top:50px;
                     margin-bottom:100px;" />
			</div>
		</div>    
	</div>  

   <!-- 메인 컨테이너 -->
    <div class="container">	
        <div class="row">
			<h3>Menu</h3>
			<div class="tabbable-panel">
				<div class="tabbable-line">
				<!-- tab 반상/단품 -->
					<ul class="nav nav-tabs ">
						<li class="active">
							<a href="#tab_default_1" data-toggle="tab">
								술빈정 반상
							</a>
						</li>
						<li>
							<a href="#tab_default_2" data-toggle="tab">
								술빈정 단품
							</a>
						</li>					
					</ul>
					
					<!-- tab contents -->
					<div class="tab-content">
						<!-- 반상 -->
						<div class="tab-pane active" id="tab_default_1">
							<p>
								<ul style="font-size: 12px;">
									<li>술빈정은 호박밥, 흑미밥, 현미밥, 곤그레밥, 흰밥이 매일매일 새롭게 제공됩니다. </li>							
									<li>밥, 국, 반찬은 리필가능합니다.</li>
								</ul>							
							</p>	
							<!-- 밥 -->						
							<div class="row" id="menutitle">
								<div class="col-xs-2">밥</div>
								<div class="col-xs-10">
									<hr style="width:100%; "/>
								</div>							
							</div>													
							<div class="row" id="menucontent">
								<div class="col-xs-4">								
									<div class="row">
										<strong>1. 한방보쌈바베큐</strong>
										<strong style="color:red;">&nbsp;Best </strong>
									</div>
									<p>
										술빈정의 BEST메뉴로 특제 보쌈바베큐를 1인 반상으로 즐길 수 있습니다.
										<br/><strong>10,500</strong>
									</p>								
									<div class="row">
										<strong>2. 간장새우덮밥</strong>
										<strong style="color:red;">&nbsp;Best </strong>
									</div>									
									<p>간장새우를 밥에 넣어 김에 싸 먹는 맛이 일품입니다.
										<br/><strong>10,000</strong>
									</p>					
									<div class="row">
										<strong>3. 닭불고기</strong>
									</div>								
									<p>평범하지 않은 새로운 맛의 닭불고기 입니다.
										<br/><strong>10,500</strong>
									</p>
									<div class="row">
										<strong>4. 매콤제육볶음</strong>	
									</div>								
									<p>
										매콤하고 담백한 제육볶음이 입맛을 살려줍니다.
										<br/><strong>10,000</strong>
									</p>
									<div class="row">
										<strong>5. 골동반(곤드레비빔밥)</strong>	
									</div>								
									<p>
										영양소를 두루 갖춘 비빔밥입니다. (밥 리필 가능)
										<br/><strong>9,000</strong>
									</p>
									<div class="row">
										<strong>6. LA갈비</strong>
									</div>								
									<p>
										갈비의 진리 LA갈비입니다.
										<br/><strong>11,500</strong>
									</p>									
									<div class="row">
										<strong>7. 쭈꾸미날치알쌈</strong>
									</div>									
									<p>
										쭈꾸미를 버터와 함께 매콤하게 볶아낸 요리로 날치알과 싸먹으면 좋습니다.
										<br/><strong>11,500</strong>
									</p>
									<div class="row">
										<strong>8. 갈비탕</strong>									
									</div>								
									<p>
										갈비를 푹 고아 만든 뜨끈뜨끈한 갈비탕입니다.
										<br/><strong>10,500</strong>
									</p>						
									<br/><br/>
									<p style="font-size:10px;"> * 조미료가 들어가지 않은 국물이므로
										<br/>기호에따라 소금을 첨가하시면 감칠맛이 더욱 좋습니다.
									</p>
								</div>
								<!-- menu images -->
								<div class="col-xs-8">																													
									<img src="<%=cPath %>/resource/images/menu_0101.png" alt="메뉴사진_한방보쌈바베큐"/>										
								</div>															
							</div>	
							<!-- 밥 end -->	
							
							<!-- 면 -->						
							<div class="row" id="menutitle">
								<div class="col-xs-2">면</div>
								<div class="col-xs-10">
									<hr style="width:100%; "/>
								</div>							
							</div>													
							<div class="row" id="menucontent">
								<div class="col-xs-4">								
									<div class="row">
										<strong>9. 육회소바</strong>
										<strong style="color:red;">&nbsp;Best </strong>
									</div>
									<p>
										시원한 육회소바와 튀김이 함께 제공됩니다.
										<br/><strong>11,000</strong>
									</p>								
									<div class="row">
										<strong>10. 명란파스타</strong>
										
									</div>									
									<p>입안에서 톡톡 터지는 명란과 쫄깃한 파스타 면이 만났습니다.
										<br/><strong>12,000</strong>
									</p>
								</div>
							</div>						
						</div>													
											
						<!-- 단품 -->
						<div class="tab-pane" id="tab_default_2">							
							<div class="row" id="menutitle">
								<div class="col-xs-2">밥</div>
								<div class="col-xs-10">
									<hr id="menuhr" style="width:100%; "/>
								</div>							
							</div>													
							<p id="menucontent">
								Duis autem eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.
							</p>								
						</div>
					</div>
				</div>
			</div>
		</div>					
	    
	<jsp:include page="../footer.jsp"></jsp:include>	
	
	<!-- jQuery -->
    <script src="<%= cPath %>/resource/js/jquery-3.2.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%= cPath %>/resource/js/bootstrap.min.js"></script>
</body>
</html>
