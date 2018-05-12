<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="mvo" class="member.model.MemberVO" scope="page" />
<%-- <jsp:setProperty property="name" name="mvo" value="${param.name}"/>
<jsp:setProperty property="userid" name="mvo" value="${param.userid}"/>
<jsp:setProperty property="pwd" name="mvo" value="${param.pwd}"/> --%>

<jsp:setProperty property="*" name="mvo" />
<!-- 테이블의 컬럼명과 VO의 set***의 ***과 form의 name의 값이 동일하다면 사용가능. -->

<jsp:useBean id="mdao" class="member.model.MemberDAO" scope="session" /> <!-- 액션 방식 -->

<%
	int n = mdao.registerMember(mvo);

	if(n > 0) {%>
	<script type="text/javascript">
		alert("회원가입 성공!!");
		location.href="memberList.jsp";
		// 자바 스크립트에서 페이지 이동은
		// location.href = "이동해야할 페이지명"; 으로 한다.
	</script>
<%	}
	else {%>
	<script type="text/javascript">
		alert("회원가입 실패!!");
		location.href="memberform.jsp";
		// 자바 스크립트에서 페이지 이동은
		// location.href = "이동해야할 페이지명"; 으로 한다.
	</script>
  <%}
		
%>
