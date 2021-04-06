<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap core JS-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>옷감</title>
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
            	
	       			<div id="upImg">
	       			<!-- 상의 리스트 -->
	       			</div>
            	</div>
            	<div class="col-md-6">
	             	<div id="downImg">
	       			<!-- 하의 리스트 -->
	       			</div>
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
					str += "<div class='upc' data-upno='"
						+ this.cgUpcNo
						+ "'><img class='img-fluid img-thumbnail' src='/resources/assets/img/cgup/"
						+ this.cgUpcImg
						+ "' style='width: 100px; height: 100px; object-fit: cover;' /></div>"
				});//each
				$("#upImg").html(str);
       		});//JSON
       	}//getUpList
		getUpList();
		       		
		function getDownList() {
			$.getJSON("/mix/downList", function(data){
				var str = "";
     				
				$(data).each(function(){
					str +="<div class='downc' data-downno='"
						+ this.cgDowncNo 
						+ "'><img class='img-fluid img-thumbnail' src='/resources/assets/img/cgdown/" 
						+ this.cgDowncImg
						+ "' style='width: 100px; height: 100px; object-fit: cover;' /></div>"
				});//each
				$("#downImg").html(str);
			});//JSON
		}//getDownList
		getDownList();
       		
   		var strUp = "";
		var strDown = "";
		var imgUp = "";
		var imgDown = "";
		var noUp = "";
		var noDown = "";
       		
       	$("#upImg").on("click", ".upc img", function(){
       		var upc = $(this).parent();
       		noUp = upc.data("upno");
       		imgUp = this.src;
			strUp = "<img class='img-fluid' src='"
				+ imgUp
				+ "' style='width: 390px; height: 390px; object-fit: cover;' />";
			$("#pickUpImg").html(strUp);                
		});//onclick
		$("#downImg").on("click", ".downc img", function(){
			var downc = $(this).parent();
			noDown = downc.data("downno");
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
			var cgupcno = noUp;
			var cgdowncno = noDown;
			console.log(noUp);
			console.log(noDown);
			
			$.ajax({
				type : 'post',
				url : '/mix/make',
				headers: {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',
				data : JSON.stringify({
					cgUpcNo : cgupcno,
					cgDowncNo : cgdowncno
				}),
				success : function(result) {
						alert("등록 되었습니다.");
				}
			})//ajax
		})//clothMixBtn
	});//document
</script>
            
    </body>
</html>
