<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="standardActionStudy.test.PersonDTO" %>
<%
	PersonDTO person = new PersonDTO();

	person.setName("송지섭");
	person.setGender('m');
	person.setAge(26);
	
	String name = person.getName();
	char gender = person.getGender();
	int age = person.getAge();
	String genderStr = person.getGenderStr();
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 보기</title>
</head>
<body>

	<h2>스크립틀릿을 사용하여 DTO 클래스의 객체정보를 불러와 본다.</h2>
	성명 : <%= name %><br/>
	성별구문 : <%= gender %><br/>
	나이 : <%= age %><br/>
	성별 : <%= gender %><br/>
	
	<br/><br/><br/>
	
	<h2>JSP 표준 액션중 useBean을 사용하여 DTO 클래스의 객체정보를 불러와 본다.</h2>
	<jsp:useBean id="ps" class="standardActionStudy.test.PersonDTO" />
	<!-- 위에 import 해준것과 같은 효과  -->
	
	<jsp:setProperty property="name" name="ps" value="설현" />
	<jsp:setProperty property="gender" name="ps" value="f" />
	<jsp:setProperty property="age" name="ps" value="26" />
	
	성명 : <jsp:getProperty property="name" name="ps"/><br/>
	성별구문 : <jsp:getProperty property="gender" name="ps"/><br/>
	나이 : <jsp:getProperty property="age" name="ps"/><br/>
	성별 : <jsp:getProperty property="genderStr" name="ps"/><br/> 
	
</body>
</html>