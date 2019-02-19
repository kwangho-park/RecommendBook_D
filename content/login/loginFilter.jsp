<%-- page directive tag --%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%-- jsp action tag --%>
<jsp:useBean id="memberDB" class="clientInfo.MemberDB" scope="application"/>


<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	
	// 로그인 필터링 로직 // 
	if(memberDB.loginFilter(id,pw)){		// id, pw가 일치
		
		out.println("<script>alert('로그인 성공^^!') </script>");
		out.println("<script>window.location.href='/RecommendBook_D/content/recommendBook/recommendBook.jsp'</script>");
		
	}else{									// id, pw불일치
		
		out.println("<script>alert('아이디 또는 비밀번호가 일치하지 않습니다')</script>");
		out.println("<script>window.location.href='login.jsp'</script>");
	}
%>