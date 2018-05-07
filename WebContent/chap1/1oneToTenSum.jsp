<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/MyWeb/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script src="/MyWeb/js/jquery-3.3.1.min.js"></script>
<script src="/MyWeb/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<title>1부터 10까지의 합 구하기</title>

<style type="text/css">
	
	#sum { font-size: 16pt;
		  font-weight: bold;
		  color: blue; }

</style>


</head>
<body>
<%-- JSP 주석문 --%>
<%--
	<%로 시작하여 %> 로 끝나는 것을 "스크립틀릿" 이라고 부른다.
	"스크립틀릿" 에 자바 코딩이 들어가는 것이다.
	그런데 "스크립틀릿" 에 코딩된 부분은 웹 브라우져에서 소스보기를 하더라도
	안 보여지므로 보안성이 좋다.
	
	<%= %> 을 expression(표현식) 이라고 부른다.
	이 expression(표현식) 은 "스크립틀릿에서 작성된 결과값" 을
	웹 브라우저 상에서 보여주고자 할때 사용하는 것이다.
	
	1oneToTenSum.jsp 라는 파일은 실제로
	확장자 .java 파일로 저장되어서 컴파일 되어진
	확장자 .class 파일로 저장되어지는데
	어느 경로에 저장되어지는지 알아본다.
	
	C:\myjsp\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\MyWeb\org\apache\jsp\chap1.java
	C:\myjsp\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\MyWeb\org\apache\jsp\chap1.class 파일로
	저장된다.
	
	혹시 1oneToTenSum.jsp 라는 파일을 수정을 했지만
	수정한대로 안 먹으면
	_1oneToTenSum_jsp.java 와 _1oneToTenSum_jsp.class 파일이 꼬였기 때문이다.
	그래서 _1oneToTenSum_jsp.java 와 _1oneToTenSum_jsp.class 파일을 삭제한 후 _1oneToTenSum_jsp.jsp 라는 파일을 수정하면 잘 될것이다. 
	
 --%>
<%
	int sum = 0;

	for(int i=0; i<=10; i++){
		sum += i;
	}
%>

1 부터 10까지의 합은 <span id="sum"><%= sum %></span> 입니다.

</body>
</html>