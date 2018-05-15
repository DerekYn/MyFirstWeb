<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%= request.getContextPath() %>/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script src="<%= request.getContextPath() %>/js/jquery-3.3.1.js"></script>
<script src="<%= request.getContextPath() %>/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<title>개인정보 입력결과(서블릿을 사용한 것)</title>
</head>
<body>

	<div class="container">
	  <h2>개인정보 입력결과</h2>
	  <p>서블릿을 사용한 것</p>  
	   /MyWeb/standardActionStudy/7personResultView.jsp 파일의 내용이 보여진다.<br/><br/>         
	  <table class="table">
	    <thead>
	      <tr>
	        <th>성명</th>
	        <th>주민번호</th>
	        <th>성별</th>
	        <th>나이</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <td>${name}</td>
	        <td>${jubun}</td>
	        <td>${gender}</td>
	        <td>${age}</td>
	      </tr>
	    </tbody>
	  </table>
	</div>
	
</body>
</html>