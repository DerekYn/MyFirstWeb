<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String str1 = request.getParameter("num1");
	String str2 = request.getParameter("num2");
	
	int num1 = 0;
	int num2 = 0;
	int sum = 0;
	
	try {
		num1 = Integer.parseInt(str1);
		num2 = Integer.parseInt(str2);
		sum = num1 + num2;
		
	} catch(NumberFormatException e) {
		/*
			에러가 발생하면 에러를 처리해주는 페이지로 이동시킨다.
			여기서는 에러를 처리해주는 페이지를 error_ex01.jsp 로 하겠다.
		*/
		RequestDispatcher dispatcher = request.getRequestDispatcher("error_ex01.jsp");	// 모든 권한을 ("error_ex01.jsp")로 넘겨주겠다.
		dispatcher.forward(request, response);	// 모든걸 다 넘겨주겠다. dispatcher에게
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex01_numCalcEnd.jsp </title>

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