<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="psdto" class="standardActionStudy.test.PersonDTO" />
<jsp:setProperty property="name" name="psdto" value="${param.name}" /> <!-- request.setParameter()랑 똑같은 것. -->
<%-- 
<jsp:setProperty property="gender" name="psdto" value="${param.gender}" />   
<jsp:setProperty property="age" name="psdto" value="${param.age}" />     
--%>
<jsp:setProperty property="jubun" name="psdto" value="${param.jubun1}${param.jubun2}" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%= request.getContextPath() %>/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script src="<%= request.getContextPath() %>/js/jquery-3.3.1.js"></script>
<script src="<%= request.getContextPath() %>/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<title>개인정보 입력결과(JSP 표준액션을 사용한 것)</title>
</head>
<body>

	<div class="container">
	  <h2>개인정보 입력결과</h2>
	  <p>JSP 표준액션을 사용한 것</p>            
	  <table class="table">
	    <thead>
	      <tr>
	        <th>성명</th>
	        <th>성별</th>
	        <th>나이</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <td><jsp:getProperty property="name" name="psdto"/></td>
	        <td><jsp:getProperty property="mygender" name="psdto"/></td>
	        <td><jsp:getProperty property="myage" name="psdto"/></td>
	        <%-- 
	        <td><jsp:getProperty property="genderStr" name="psdto"/></td>
	        <td><jsp:getProperty property="age" name="psdto"/></td> 
	        --%>
	      </tr>
	    </tbody>
	  </table>
	</div>
	
</body>
</html>