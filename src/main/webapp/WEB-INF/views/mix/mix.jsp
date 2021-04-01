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
        <!-- Masthead-->
        <main>
            
            <div class="container h-100">
            
                <!-- <div class="row">
                    <div class="col-md-3 col-sm-3">
                        <div class="text-center">옷 상의</div>
                    </div>
                    <div class="col-md-1 col-sm-1"></div>
                    <div class="col-md-3 col-sm-3">
                        <div class="text-center">옷 하의</div>
                    </div>
                    <div class="col-md-1 col-sm-1"></div>
                    <div class="col-md-4 col-sm-4">
                        <div class="text-center">옷 조합</div>
                    </div>
                </div> -->
                <div class="row">
                    <div id="upImg" class="col-md-3 col-sm-3">
<!--                     	<img src="/resources/assets/img/cgup/1.PNG"> -->
<!--                         <div class="col-md-2 col-sm-2"> -->
<!--                             <a class="img-thumbnail" href="/옷감/랭킹리스트.html"> -->
<!--                                 <img class="img-fluid" src="./assets/img/cgup/1.PNG"  -->
<!--                                     style="width: 100px; height: 100px; object-fit: cover;" /> -->
<!--                             </a> -->
<!--                         </div> -->
<!--                         <div class="col-md-1 col-sm-1"></div> -->
<!--                         <div class="col-md-2 col-sm-2"> -->
<!--                             <a id="upImg" class="img-thumbnail" href="/옷감/랭킹리스트.html"> -->
<!--                                 <img class="img-fluid" src="./assets/img/cgup/2.PNG"  -->
<!--                                     style="width: 100px; height: 100px; object-fit: cover;" /> -->
<!--                             </a> -->
<!--                         </div> -->
                   	</div>
                    <div class="col-md-1 col-sm-1"></div>

                    <div class="col-md-1 col-sm-1"></div>
                    <div class="col-md-4 col-sm-4">
                        <div id="pickUpImg" class="col-lg-12 col-sm-12">
<!-- 	                        <img class="img-fluid" src="/resources/assets/img/cgup/1.PNG"  -->
<!-- 	                            style="width: 390px; height: 390px; object-fit: cover;"/> -->
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div id="downImg" class="col-md-3 col-sm-3">
<!--                         <div class="col-md-2 col-sm-2"> -->
<!--                             <a class="img-thumbnail" href="/옷감/랭킹리스트.html"> -->
<!--                                 <img class="img-fluid" src="/resources/assets/img/cgdown/1.PNG"  -->
<!--                                     style="width: 100px; height: 100px; object-fit: cover;" /> -->
<!--                             </a> -->
<!--                         </div> -->
<!--                         <div class="col-md-1 col-sm-1"></div> -->
<!--                         <div class="col-md-2 col-sm-2"> -->
<!--                             <a class="img-thumbnail" href="/옷감/랭킹리스트.html"> -->
<!--                                 <img class="img-fluid" src="/resources/assets/img/cgdown/2.PNG"  -->
<!--                                     style="width: 100px; height: 100px; object-fit: cover;" /> -->
<!--                             </a> -->
<!--                         </div> -->
                    </div>
                    <div class="col-md-1 col-sm-1"></div>

                    <div class="col-md-1 col-sm-1"></div>
                    <div class="col-md-4 col-sm-4">
                        <div id="pickDownImg" class="col-lg-12 col-sm-12" >
<!-- <!--                             <a class="img" href="/옷감/랭킹리스트.html"> -->
<!--                                 <img class="img-fluid" src="/resources/assets/img/cgdown/1.PNG"  -->
<!--                                     style="width: 390px; height: 390px; object-fit: cover;"/> -->
<!-- <!--                             </a> -->
                        </div>
                    </div>
				</div>
	                <div class="row">
	                    <div class="col-md-8 col-sm-8"></div>
	                    <div class="col-md-4 col-sm-4">
	                        <button id="button" position="left" style="height: 40px; width: 80px; font-size: 0.25rem;">투표 올리기</button>
	                        <button position="right" style="height: 40px; width: 80px; font-size: 0.25rem;">내 옷장 넣기</button>
	                    </div>
	                </div>
	            </div><!-- container -->
            </main>
            <script type="text/javascript">
            		
            	$(document).ready(function(){
            		function getUpList() {
            			$.getJSON("/list/up", function(data){
            				var str = "";
            				
            				$(data).each(function(){
            					str += "<div class='cgUp col-md-2 col-sm-2'>"            						
            						+ "<img class='img-fluid img-thumbnail' src='/resources/assets/img/cgup/"
            						+ this.cgUpcImg
                                	+ "' style='width: 100px; height: 100px; object-fit: cover;' />"
                                	+ "</div><div class='col-md-1 col-sm-1'></div>"
            				});//each
            				$("#upImg").html(str);
            			});//JSON
            		}//getUpList
					getUpList();
            		
					function getDownList() {
            			$.getJSON("/list/down", function(data){
            				var str = "";
            				
            				$(data).each(function(){
            					str += "<div class='col-md-2 col-sm-2'>"            						
            						+ "<img class='img-fluid img-thumbnail' src='/resources/assets/img/cgdown/" 
            						+ this.cgDowncImg
                                	+ "' style='width: 100px; height: 100px; object-fit: cover;' />"
                                	+ "</div><div class='col-md-1 col-sm-1'></div>"
            				});//each
            				$("#downImg").html(str);
            			});//JSON
            		}//getDownList
					getDownList();
            		
            		$("#upImg").on("click", "img", function(){

            			var str = "";            			
//             			console.log(this.src);
            			
            			str = "<div class='col-lg-12 col-sm-12'>"
                        	+ "<img class='img-fluid' src='"
                        	+ this.src
                            + "' style='width: 390px; height: 390px; object-fit: cover;' /></div>";
                        $("#pickUpImg").html(str);
                          
            		});//onclick
            		$("#downImg").on("click", "img", function(){

            			var str = "";            			
//             			console.log(this.src);
            			
            			str = "<div class='col-lg-12 col-sm-12'>"
                        	+ "<img class='img-fluid' src='"
                        	+ this.src
                            + "' style='width: 390px; height: 390px; object-fit: cover;' /></div>";
                        $("#pickDownImg").html(str);
                          
            		});//onclick
            
            		
            	});//document
            </script>
            
    </body>
</html>
