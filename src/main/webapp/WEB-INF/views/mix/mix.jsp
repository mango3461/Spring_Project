<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Bootstrap core JS-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Creative - Start Bootstrap Theme</title>
<!-- Favicon-->
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
<!-- Third party plugin CSS-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/css/styles.css" rel="stylesheet" />
</head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger dropdown" href="#page-top"><strong>옷감</strong></a>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">옷 조합만들기</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#services">내 옷 취향 찾기</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#portfolio">랭킹보기</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">회원게시판</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link js-scroll-trigger dropdown-toggle" data-toggle="dropdown" href="#">내 정보</a>
                            
                            <div class="dropdown-menu">
                                
                                <a class="dropdown-item" href="#">내 옷장</a>
                                <a class="dropdown-item" href="#">나의 pick모음</a>
                          </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="main">
            
            <div class="container h-100">
            <div class="row">
            <div class="col-md-8">
            <div class="row">
            	<div class="col-md-6">
            	
	       			<ul id="upImg">
	       			<!-- 상의 리스트 -->
	       			</ul>
            	</div>
            	<div class="col-md-6">
	             	<ul id="downImg">
	       			<!-- 하의 리스트 -->
	       			</ul>
            	</div>
            </div>
            </div>
            	<div class="col-md-1"></div>
            	<div class="col-md-3">
                    <div id="pickUpImg">
                    <!-- 선택한 상의 이미지 공간 -->
                    </div>
                    <div id="pickDownImg">
                    <!-- 선택한 하의 이미지 공간 -->
                    </div>
            	</div>
            </div>
            	<footer>
					<button id="clothMixBtn" position="left" style="height: 40px; width: 80px; font-size: 0.25rem;">투표 올리기</button>
					<button position="right" style="height: 40px; width: 80px; font-size: 0.25rem;">내 옷장 넣기</button>
            	</footer>
         	</div><!-- container -->
        </div>
<script type="text/javascript">
       		
	$(document).ready(function(){
		function getUpList() {
			$.getJSON("/mix/upList", function(data){
				var str = "";
       				
				$(data).each(function(){
					str += "<img class='img-fluid img-thumbnail' src='/resources/assets/img/cgup/"
						+ this.cgUpcImg
						+ "' style='width: 100px; height: 100px; object-fit: cover;' />"
				});//each
				$("#upImg").html(str);
       		});//JSON
       	}//getUpList
		getUpList();
		       		
		function getDownList() {
			$.getJSON("/mix/downList", function(data){
				var str = "";
     				
				$(data).each(function(){
					str += "<img class='img-fluid img-thumbnail' src='/resources/assets/img/cgdown/" 
						+ this.cgDowncImg
						+ "' style='width: 100px; height: 100px; object-fit: cover;' />"
				});//each
				$("#downImg").html(str);
			});//JSON
		}//getDownList
		getDownList();
       		
   		var strUp = "";
		var strDown = "";
		var imgUp = "";
		var imgDown = "";
       		
       	$("#upImg").on("click", "img", function(){
       		imgUp = this.src;
			strUp = "<img class='img-fluid' src='"
				+ imgUp
				+ "' style='width: 390px; height: 390px; object-fit: cover;' />";
			$("#pickUpImg").html(strUp);                
		});//onclick
		$("#downImg").on("click", "img", function(){
			imgDown = this.src;
			strDown = "<img class='img-fluid' src='"
					+ imgDown
					+ "' style='width: 390px; height: 390px; object-fit: cover;' />";
			$("#pickDownImg").html(strDown);                     
		});//onclick
       		
		$("#pickUpImg").on("click", "img", function(){
			imgUp = "";
			strUp = "";
			$("#pickUpImg").html(strUp);
		});//onclick
       		
		$("#pickDownImg").on("click", "img", function(){
			imgDown = "";
			strDown = "";
			$("#pickDownImg").html(strDown);
		});//onclick

		$("#clothMixBtn").on("click", function(){
// 			var cgupcno = ;
// 			var cgdowncno = ;
			
			$.ajax({
				type : 'post',
				url : '/mix',
				headers: {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',
				data : JSON.stringify({
					cgupcno : cgupcno,
					cgdowncno : cgdowncno
				}),
				success : function(result) {
					if(result === 'SUCCESS') {
						
						alert("등록 되었습니다.");
						// input 태그 내부를 비움
// 						$("#").val("");
// 						$("#").val("");
						// location.href : 현재 페이지를 이 주소 옮기겠다.
						// 에러가 났을 때 원인이 뭔지 모를때
//							location.href="/board/get?bno=" + bno
//										+ "&page=" + "${cri.page}"
//										+ "&searchType=" + "${cri.searchType}"
//										+ "&keyword=" + "${cri.keyword}"
					}
				}
			})
		})
	});//document
</script>
            
    </body>
</html>
