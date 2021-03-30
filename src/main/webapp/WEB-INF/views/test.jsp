<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<a id="cgups">
	</a>
	<a id="cgdowns">
	</a>
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
		function getUpList() {
			$.getJSON("/list/up", function(data){
				console.log(data.length);
				
				var str ="";
				
				$(data).each(function() {
					str += this.cgUpcImg
				})
				$("#cgups").html(str);
			})
		}
		function getDownList() {
			$.getJSON("/list/down", function(data){
				console.log(data.length);
				
				var str ="";
				
				$(data).each(function() {
					str += this.cgUpcNo
				})
				$("#cgdowns").html(str);
			})
		}
		getUpList();
		getDownList();
	</script>
</body>
</html>