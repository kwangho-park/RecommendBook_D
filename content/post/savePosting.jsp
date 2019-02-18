<%--
	1. [ok] 유효성 검사 로직 수정
		- session storage -> SESSION scope (server) 
	
	2. [ok] java bean 클래스의 정의
		- PostInfo class 
		
	3. [ok] client로부터 전달받은 파라미터를 session scope의 배열에 저장
		- 배열에 저장 전 잔여 공간 확인필요
		
	4. [ok] 배열에 데이터를 저장 후 다이얼로그 출력
		
	5. 저장 후 page 전환
		  
	6. [추후] script tag -> JSTL tag으로 변환
		  
 --%>


<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<jsp:useBean id="postInfoDB" class="clientInfo.PostInfoDB" scope="session"/>


<%
	request.setCharacterEncoding("UTF-8");
%>

<html>
<head>
	<title>Insert title here</title>
</head>
<body>
	SESSION scope에 데이터를 저장하자! <br>

	<%
		String bookName = request.getParameter("bookName");
		String writer 	= request.getParameter("writer");
		String title	= request.getParameter("title");
		String content	= request.getParameter("content");
		String bookType	= request.getParameter("bookType");
		String favorite	= request.getParameter("favorite");
		String level	= request.getParameter("level");	
		String score	= request.getParameter("score");
		
		// 다이얼로그 출력용 객체
		// [확인 필요] : 어떻게 동작하는지 확인이 필요한 녀석 (구글링한 소스)
		PrintWriter write = response.getWriter();
		
		if(postInfoDB.isEmpty()){		// 배열의 저장공간을 확인
			
			postInfoDB.setAll(bookName,writer,title,content,bookType,favorite,level,score);	
		
			// [확인 필요] : 어떻게 동작하는지 확인이 필요한 녀석 (구글링한 소스)
			write.println("<script>location.href='/RecommendBook_D/content/recommendBook/recommendBook.jsp'</script>");			
			write.println("<script>alert('게시글이 등록되었습니다^^.')</script>");		
			write.flush();
			
			// 도서추천 페이지로 이동
			//response.sendRedirect("/RecommendBook_D/content/recommendBook/recommendBook.jsp");
			
		}else{

			write.println("<script>alert('저장공간이 존재하지않습니다.')</script>");		
			write.println("<script>location.href='/RecommendBook_D/content/post/post.jsp'</script>");	
			write.flush();		
			
			// 게시글 입력 페이지로 이동
			//response.sendRedirect("/RecommendBook_D/content/post/post.jsp");
	
			
		}
	%>


</body>
</html>