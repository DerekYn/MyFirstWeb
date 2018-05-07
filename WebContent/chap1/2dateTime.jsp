<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>날짜와 현재시각을 알아본다.</title>
</head>
<body>
<%
//time now
		Date now = new Date();

		String today = String.format("%tF, %tT", now, now);
		/*
			String.format() 메소드는 System.out.printf() 메소드 처럼
			문자열을 형식에 맞도록 해주는 포맷기능을 한다.
			그런데 System.out.printf() 메소드는 포맷된 결과를 바로 모니터에 출력을 해주지만,
			String.format() 메소드는 모니터에 자로 출력해하지 않고 원하는 포맷으로 
			문자열을 만들어서 리턴(반환)만 해주는 메소드이다.
			
				%d == 정수
				%s == 문자열
				%f == 실수
				%t == 날짜(시간)
			
			<참고>
			날짜 타입 format			설명
			-------------------------------------------------------
			%tF						날짜를 yyyy-mm-dd 형식으로 포맷
			%tT						시간을 HH:MM:SS 형식으로 포맷
			%tp						오전/오후를 출력
			%tA						요일명 출력
			%tY						yyyy를 출력
			%tB						월명(영어)을 출력
			%tm						mm를 출력
			%td/%te					dd로 출력
			%tk						hh(0~23)로 출력
			%tl						hh(1~12)로 출력
			%tM						mm(분)로 출력
			%tS						ss로 출력
			%tZ						time zone 출력
		*/
		
		String today2 = String.format("오늘은 %tY년 %tm월 %td일 %tA입니다.", now, now, now, now);
%>

</body>

	<ul style="list-style-type: square;">
		<li> 오늘의 날짜: <%= now %></li>
		<li> 오늘의 날짜: <%= today %></li>
		<li> 오늘의 날짜: <span style="color: red;"><%= today2 %></span></li>
	</ul>

</html>