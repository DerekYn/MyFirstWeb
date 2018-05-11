<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.model.*, java.sql.*, util.my.*" %>   

<jsp:include page="../header.jsp" />		<!-- header에 j-query가 이미 포함되어있다. -->

<jsp:useBean id="mdao" class="member.model.MemberDAO" scope="session" /> <!-- JSP 표준 액션 방식 -->
    
<%
    String ctxname = request.getContextPath(); // 프로젝트의 Context path명을 반환한다.
    
    String idx = request.getParameter("idx");
    String currentURL = MyUtil.getCurrentURL(request);
    
    System.out.println(" 확인용 : currentURL => " + currentURL);
    // http://localhost:9090/MyWeb/member/memberDetail.jsp?idx=231&goBackURL=member/memberList.jsp?null
    
    String goBackURL = currentURL.substring(currentURL.indexOf("goBackURL="));	// goBackURL=의 g 부터 끝까지 뽑아오겠다.
    // member/memberList.jsp?currentShowPageNo=17&sizePerPage=5
    
    goBackURL = goBackURL.substring(goBackURL.indexOf("/") + 1);
    		
    MemberVO mvo = null;
    
    try {
    	mvo = mdao.getMemberOneByIdx(idx);

    } catch(SQLException e) {
%>	
  		<script type="text/javascript">
  			alert("비정상적인 경로로 들어왔습니다.");
  			location.href = "javascript:history.back();";		// 이전 페이지로 이동
  			//location.href = "javascript:history.go(-1);";		// 이전페이지로 이동
  			//location.href = "javascript:history.go(-2);";		// 이전이전페이지로 이동
  		</script>
<%    	
    }
%>

<style type="text/css">
	table#personInfoTbl {
		border: 0px solid gray;
		border-collapse: collapse;
		width: 50%;
		margin-top: 3%;
	}
	
	table#personInfoTbl tr {
		line-height: 300%;
	}
	
	table#personInfoTbl td {
		border: 0px solid gray;
		border-collapse: collapse;
		font-size: 14pt;
	}
	
	table#personInfoTbl td.title {
		text-align: justify;
		font-size: 14pt;
		font-weight: bold;
	}
</style>    

<script type="text/javascript">
  
  function goMemberList(goBackURL) {
	  console.log(goBackURL);
	  location.href = goBackURL;
  }

</script>

<div class="container">
	<table id="personInfoTbl">
		<tr>
		  <td class="title">▷ 회원번호</td>
		  <td><%= mvo.getIdx() %></td>
		</tr>
		
		<tr>
		  <td class="title">▷ 성명</td>
		  <td><%= mvo.getName() %></td>
		</tr>
		
		<tr>
		  <td class="title">▷ 아이디</td>
		  <td><%= mvo.getUserid() %></td>
		</tr>
		
		<tr>
		  <td class="title">▷ 비밀번호</td>
		  <td><%= mvo.getPwd() %></td>
		</tr>
		
		<tr>
		  <td class="title">▷ 이메일</td>
		  <td><%= mvo.getEmail() %></td>
		</tr>
		
		<tr>
		  <td class="title">▷ 연락처</td>
		  <td><%= mvo.getAllHp() %></td>
		</tr>
		
		<tr>
		  <td class="title">▷ 우편번호</td>
		  <td><%= mvo.getAllPost() %></td>
		</tr>
		
		<tr>
		  <td class="title">▷ 주소</td>
		  <td><%= mvo.getAllAddr() %></td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<button type="button" style="margin-top: 30px; background-color: navy; color: white; width: 100px; border: none;" onClick="goMemberList('<%= goBackURL %>');">회원목록</button>
			</td>
		</tr>
	</table>
</div>

<jsp:include page="../footer.jsp" />