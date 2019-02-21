<%-- 사용자가 입력한 정보와  (임시) DB의 데이터를 비교 --%>
<%-- 최대저장공간 및 id 중복 여부--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="memberDB" class="clientInfo.MemberDB" scope="application"/>

<%
	request.setCharacterEncoding("UTF-8");
%>


${param.id }
${param.pw }
${param.name }	
${param.email }
${param.address }
<hr>

<c:choose>
	<c:when test="${!application.memberDB.isFull()}">
		<c:choose>
		
			<%-- [debugging point] 해당 조건문의 조건이 비정상동작중.. --%>
			<c:when test="${application.memberDB.idFilter(param.id)}">
				<%-- 회원가입완료 팝업창 및 로그인 페이지 --%>
				회원가입이 완료되었습니다.
			</c:when>
	
			<c:otherwise>
				중복된 아이디가 존재합니다.
			</c:otherwise>
		</c:choose>
	</c:when>
	
	<c:otherwise>
		<%-- 경고창 및 회원가입 페이지 --%>
		데이터베이스에 저장가능한 공간이 없습니다.
	</c:otherwise>
</c:choose>







<%-- jstl 를 추가하자 효력이 없는 텍스트라는 경고 발생.. 이게 대체 뭔일이여
	jstl을 import 한다고 script let을 사용하지 못하는건 아닐텐데??
<%
	request.setCharacterEncoding("UTF-8");


   	String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String address = request.getParameter("address");


	if(!memberDB.isFull()){					// 최대 저장공간 필터링(4번째 아이디 존재유무 확인)
	    if(memberDB.idFilter(id)){			// id 중복여부 필터링

	    	// // id, pw, name, email, address 저장
	    	memberDB.setMember(id,pw,name,email,address);

	    	// 회원가입완료 팝업창 및 로그인 페이지 URL
	    	out.println("<script>alert('회원가입 성공^^!') </script>");
	    	out.println("<script>window.location.href='/RecommendBook_D/content/login/login.jsp'</script>");
	    		
	    }else{
	    	// 경고창 및 회원가입 페이지 URL
	    	out.println("<script>alert('중복된 아이디가 존재합니다.')</script>");
	    	out.println("<script>window.location.href='join.jsp'</script>");
	    }
	}else{
	    // 경고창 및 회원가입 페이지 URL
		out.println("<script>alert('최대 저장공간을 초과했습니다.')</script>");
   		out.println("<script>window.location.href='join.jsp'</script>");
	 }
%>
 --%>
