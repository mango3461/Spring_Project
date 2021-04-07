<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinmember.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css">
</head>
<body>

<form action="joinmember" method="post">
	<div class="container">
		<h1>회원가입</h1>
		<br>
		<div class="form-group has-feedback">
			<input type="text" name="mid" class="form-control" placeholder="ID" />
			<span class="glyphion glyphion-envelope form-control-feedback"></span>
			<button id="idCheckBtn">아이디 체크하기</button>
		</div>
		<br><br>
		<div class="for-group has-feedback">
			<input type="password" name="mpw" class="form-control" placeholder="PW" />
			<span class="glyphicon glyphicon-lock form-control-feedback"></span>
		</div>
		<br><br>
		<input type="radio" name="mgen" value="true">남자
		<input type="radio" name="mgen" value="false">여자
		<br><br>
		<input type="radio" name="mage" value="10">10대
		<input type="radio" name="mage" value="20">20대
		<input type="radio" name="mage" value="30">30대
		<input type="radio" name="mage" value="40">40대
		<input type="radio" name="mage" value="50">50대
		<br><br>
		<div>
			<button type="submit" class="btn btn-primary btn-block btn-flat">가입하기</button>
		</div>
	</div>
</form>
<script type="text/javascript">
	$(document).ready(function() {
		$(#"idCheckBtn").on("click", function(){
			$.ajax({
				type : 'post',
				url : '/member/check/' + midValue,
				headers: {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',				
				success : function(result) {
						if(result.mid === midValue) {
							str += "아이디 체크 완료";
							$("resultComment").html(str);
						}
						console.log(result);
					},
					error : function(result){
						console.log("에러발생");
					}
				}
		})
	}

</script>
</body>
</html>