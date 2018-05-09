<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>errorPage 속성과 isErrorPage 속성을 이용한 에러페이지 출력방법</title>
</head>
<body>

	<h1>JSP 페이지에서 Exception 처리 방법 2</h1>
	<h3>errorPage 속성과 isErrorPage 속성을 이용한 에러페이지 출력방법</h3>
	<br/>
	
	잘못된 데이터가 입력되었습니다.<br/><br/>
	에러메시지 : <%= exception.getMessage()  %><br/><br/>
	<!-- JSP 페이지 directive(지시어)에서 isErrorPage="true" 으로 해야만 내장객체인 exception을 사용할 수 있게 된다. -->
	<br/><br/>
	<a href="1numberInputForm.jsp">되돌아가기</a>

</body>
</html>