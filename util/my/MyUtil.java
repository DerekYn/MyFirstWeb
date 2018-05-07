package util.my;

import javax.servlet.http.HttpServletRequest;

public class MyUtil {
	
	// *** 돌아갈 URL 페이지의 값을 알기위해서 먼저 현재 URL 주소를 얻어오는 메소드 *** //
	public static String getCurrentURL(HttpServletRequest request) {

		String currentURL = request.getRequestURL().toString();
		// http://localhost:9090/MyWeb/member/memberList.jsp
		
		String queryString = request.getQueryString();
		// currentShowPageNo=9&sizePerPage=5


		currentURL += "?" + queryString;
		// http://localhost:9090/MyWeb/member/memberList.jsp + currentShowPageNo=9&sizePerPage=5
		
		String ctxName = request.getContextPath();	// ==> /MyWeb
		
		int index = currentURL.indexOf(ctxName);
		
		int beginIndex = index + ctxName.length() + 1;  // ==> 21 + 6 + 1 = 28
		
		currentURL = currentURL.substring(beginIndex);
		
		return currentURL;
		
	}// end of String getCurrentURL()-----------------------------

}
