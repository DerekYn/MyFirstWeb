<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="error_ex02.jsp" %>

<%
	String str1 = request.getParameter("num1");
	String str2 = request.getParameter("num2");
	
	
	int num1 = Integer.parseInt(str1);
	int num2 = Integer.parseInt(str2);
	
	int sum = num1 + num2;

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex02_numCalcEnd.jsp </title>

<style type="text/css">
	a {test-decoration: none;}
	a:hover {color: red;}
</style>

</head>
<body>

	<%= num1 %> + <%= num2 %> = <%= sum %><br/><br/>
	<a href="1numberInputForm.jsp">되돌아가기</a>

</body>
</html>