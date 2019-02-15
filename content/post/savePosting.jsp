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
	
	<%--
	입력한 도서명 : ${param.bookName} <br>
	입력한 작가명 : ${param.writer}<br>
 	--%>

	<%
		String bookName = request.getParameter("bookName");
		String writer 	= request.getParameter("writer");
		String title	= request.getParameter("title");
		String content	= request.getParameter("content");
		String bookType	= request.getParameter("bookType");
		String favorite	= request.getParameter("favorite");
		String level	= request.getParameter("level");	
		String score	= request.getParameter("score");
		
		if(postInfoDB.isEmpty()){		// 배열의 저장공간을 확인
			
			postInfoDB.setAll(bookName,writer,title,content,bookType,favorite,level,score);	
			// 저장완료 다이얼로그 창 출력
			// post page로 redirection 필요
			
		}else{
			out.println("저장공간이 부족합니다");		// 다이얼로그 창으로 변경	
			// post page로 redirection 필요
		}
	%>


</body>
</html>