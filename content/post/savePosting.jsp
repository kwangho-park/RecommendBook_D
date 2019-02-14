<%--
	1. [ok] 유효성 검사 로직 수정
		- session storage -> SESSION scope (server) 
	
	2. java bean 클래스의 정의
		- PostInfo class
	
	3. client로부터 전달받은 파라미터를 session scope의 배열에 저장
		- 배열에 저장 전 잔여 공간 확인필요
		
	4. 배열에 데이터를 저장 후 다이얼로그 출력
	
		  
 --%>
<%@ page contentType="text/html; charset=UTF-8"%>

<html>
<head>
	<title>Insert title here</title>
</head>
<body>
	SESSION scope에 데이터를 저장하자!
</body>
</html>