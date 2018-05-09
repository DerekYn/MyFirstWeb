<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String strnum1 = request.getParameter("num1");
	String strnum2 = request.getParameter("num2");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> try ~ catch ==> RequestDispatcher를 이용한 에러페이지 출력 </title>

<style type="text/css">
	a {test-decoration: none;}
	a:hover {color: red;}
</style>

</head>
<body>
	<h1>JSP 페이지에서 Exception 처리 방법 1</h1>
	<h3>try ~ catch ==> RequestDispatcher를 이용한 에러페이지 출력</h3>
	<br/>
	
	잘못된 데이터가 입력되었습니다.<br/><br/>
	<%= "num1 : " + strnum1 + "<br/>" %>
	<%= "num2 : " + strnum2 + "<br/>" %>
	<br/><br/>
	<a href="1numberInputForm.jsp">되돌아가기</a>
	
</body>
</html>