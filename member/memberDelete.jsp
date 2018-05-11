<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="mdao" class="member.model.MemberDAO" scope="session" /> <!-- JSP 표준 액션 방식 -->

<%
	String method = request.getMethod();
	// POST or GET
	
	if(!"post".equalsIgnoreCase(method)) {
		// POST 방식이 아니라면 회원삭제를 하지 못하도록 한다.!!
		
		response.sendRedirect("../index.jsp");
		// 자바에서 페이지 이동은 response.sendRedirect("이동할 페이지 명"); 은 
		// "이동할 페이지명" 에 데이터(request, response) 전달은 할 수 없고
		// 단순히 페이지 이동만 일어날 뿐이다.
		
		return;
		
	} // POST 방식이어도 해커들이 URL을 통해 수정/삭제 등 해킹 못하게 하는 ~


	String idx = request.getParameter("idx");
	String goBackURL = request.getParameter("goBackURL");
	// member/memberList.jsp?currentShowPageNo=10&sizePerPage=3
			
	int index = goBackURL.indexOf("/");
	// 6
	
	goBackURL = goBackURL.substring(index + 1);
	// memberList.jsp?currentShowPageNo=10&sizePerPage=3

	int n = mdao.deleteMember(idx);

	String msg = (n>0)?"회원삭제 성공!!":"회원삭제 실패!!";
	String loc = goBackURL;
	
	request.setAttribute("msg", msg);		// request는 저장 시킬수 있는 능력이 있다.
	request.setAttribute("loc", loc);		// request는 저장 시킬수 있는 능력이 있다.

	RequestDispatcher dispatcher = request.getRequestDispatcher("msg.jsp");
	dispatcher.forward(request, response);
		
%>

<%-- 
RequestDispatcher dispatcher = request.getRequestDispatcher("msg.jsp");
dispatcher.forward(request, response);  

	위에껄많이 씀		또는

<jsp:forward page="msg.jsp"	/>
 --%>