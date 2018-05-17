<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String ctxname = request.getContextPath(); // 프로젝트의 Context path명을 반환한다.
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
		<a href="<%= ctxname %>/index.jsp">HOME</a>&nbsp;|&nbsp;
		<a href="<%= ctxname %>/member/memberform.jsp">회원가입</a>&nbsp;|&nbsp;
		<a href="<%= ctxname %>/member/memberList.jsp">회원목록</a>&nbsp;
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