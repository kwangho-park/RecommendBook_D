
<%--page directive tag --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%--useBean action tag --%>
<%--java Bean (=instance) 생성 및 request 영역에 할당 --%>
<jsp:useBean id="member" class="clientInfo.member" scope="request"/>

<html>
<head>
	<title>Insert title here</title>
</head>
<body>

        <%
	    	/* 
	    	1.해당 페이지에서 서버에  ID를 중복확인 
	    		(사용자의 데이터는 자바빈으로 데이터 관리 -> 추후 DB table에 저장)
	    		
	    	2. 중복되지않으면 서버에 저장 후 로그인 페이지 이동
	    		= [저장] <jsp:getProperty /> action tag로 parameter값을 java Bean객체에 바로 저장가능 (단 두 객체의 변수명이 동일 할 경우)
	    		= [페이지 이동] redirect or <jsp:forward> action tag
	  
	    		
	    	3. 중복 일 경우 사용자에게 경고창 전송 (alert)
	    	*/
	        
        	String id = request.getParameter("id");
        	String pw = request.getParameter("pw");
        	
        	out.println(id);
        	out.println(pw);
        %>
        



</body>
</html>