<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="mvo" class="member.model.MemberVO" scope="page" />    
<jsp:setProperty property="*" name="mvo" />    
    
<jsp:useBean id="mdao" class="member.model.MemberDAO" scope="session" /> <!-- JSP 표준 액션 방식 -->

<%
	
	String method = request.getMethod();		// 이게 POST인지 확인하고 POST 방식이면 ㄱ
	// POST or GET
	
	if(!"post".equalsIgnoreCase(method)) {
		// POST 방식이 아니라면 회원수정을 하지 못하도록 한다.!!
%>
	<script type="text/javascript">
		alert("비정상적인 경로로 들어왔습니다.");
		location.href = "javacript:history.go(-1);";		// 이전페이지로 돌아가자
		// location.href = "javacript:history.back();";
		// location.href = "javacript:history.go(-2);";
		// location.href = "javacript:history.go(0);";		// 현재페이지 새로고침
	</script>	

<%		
		return;
		
	} // POST 방식이어도 해커들이 URL을 통해 수정/삭제 등 해킹 못하게 하는 ~

	int n = mdao.updateMember(mvo);
	String msg = (n>0)?"회원정보 수정 성공!!":"회원정보 수정 실패!!";
%>
<script type="text/javascript">
	alert("<%= msg %>");
	
	self.close();	// 팝업창 닫기(memberEdit.jsp)
	
	opener.location.reload(true);	
	// 수정팝업창을 닫으면서 부모창을 새로고침 해줘야한다.
	
</script>
