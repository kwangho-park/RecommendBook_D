<%-- 사용자가 입력한 정보와  (임시) DB의 데이터를 비교 --%>
<%-- 최대저장공간 및 id 중복 여부--%>

<%--page directive tag --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- 글자가 깨져서 출력되는것을 해소하기위함--%>
<%-- post방식으로 받은 request 데이터를 디코딩하는것으로 추정 --%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<%--useBean action tag --%>
<%--description : (임시) 회원정보를 저장하는 데이터 베이스를 셋팅--%>
<%--참고 : 어플리케이션 영역은 서버 재부팅시 초기화 됨 --%>
<jsp:useBean id="memberDB" class="clientInfo.MemberDB" scope="application"/>

<html>
<head>
	<title>Insert title here</title>
</head>
<body>
    	<%

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

</body>
</html>