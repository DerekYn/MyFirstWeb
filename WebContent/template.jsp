<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String ctxname = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="<%= ctxname %>/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%= ctxname %>/css/style.css" />
<script type="text/javascript" src="<%= ctxname %>/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="<%= ctxname %>/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<title>:::HOMEPAGE:::</title>

<script type="text/javascript">
	$(document).ready(function(){
		
		var vhtml = "";
		for(var i=0; i<15; i++) {
			vhtml += (i+1)+".내용물<br/>";
		}
		
		$("#sideconent").html(vhtml);
		
	});

</script>

</head>
<body>

<div id="mycontainer">

	<div id="headerImg">
		1. 로고이미지/네비게이터
	</div>
	
	<div id="headerLink">		
		<a>HOME</a>&nbsp;|&nbsp;<a>회원가입</a>&nbsp;|&nbsp;<a>회원목록</a>&nbsp;
	</div>
			
    <div id="goldline"></div>
	
	<div id="sideinfo">
		<div style="height: 50px; text-align: left; padding: 10px;">
			2. 로그인/Tree/View
		</div>
		<div id="sideconent" style="text-align: left; padding: 20px;">
		</div>
	</div>
	
	<div id="content" align="center">
	    <!-- 내용물 시작 -->
		<div style="height: 150px; text-align: center; padding: 20px;">
			3-1. Contents-1 입니다.
		</div>
		<div style="height: 150px; text-align: center; padding: 20px;">
			3-2. Contents-2 입니다.
 		</div>
 		<div style="height: 150px; text-align: center; padding: 20px;">
			3-3. Contents-3 입니다.
 		</div>
        <!-- 내용물 끝 -->
	</div>

	<div id="footer">
		<div style="width: 100%; text-align: center; padding: 10px;">
			4. Copyright
		</div>
	</div>
	
</div>
</body>
</html>