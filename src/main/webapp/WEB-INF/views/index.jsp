<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Bootstrap core JS-->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
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
            	<a class="navbar-brand js-scroll-trigger dropdown" href="/"><strong>옷감</strong></a>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/mix">옷 조합 만들기</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/vote">내 옷 취향 찾기</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/rank">랭킹보기</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/board">회원게시판</a></li>
                        <c:if test="${empty login }">
                        	<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/login">로그인</a></li>
                        </c:if>
                        <c:if test="${not empty login }">
	                        <li class="nav-item dropdown">
	                            <a class="nav-link js-scroll-trigger dropdown-toggle" data-toggle="dropdown">내 정보</a>
	                            
	                            <div class="dropdown-menu">
	                                
	                                <a class="dropdown-item" href="/closet/${mno}">내 옷장</a>
	                                <a class="dropdown-item" href="/member/pick">나의 pick 모음</a>
	                          </div>
	                        </li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-10 align-self-end">
                        <h1 class="text-uppercase text-white font-weight-bold">당신의 감각을 투표하세요</h1>
                        <br>
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        
                        <a class="btn btn-primary btn-xl js-scroll-trigger" href="#vote">투표하러가기</a>
                    </div>
                </div>
            </div>
        </header>
        
        
       
    </body>
</html>
