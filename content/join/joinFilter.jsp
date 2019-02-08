<%-- 사용자가 입력한 정보와  (임시) DB의 데이터를 비교 --%>
<%-- 최대저장공간 및 id 중복 여부--%>

<%--page directive tag --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- 글자가 깨져서 출력되는것을 해소하기위한 테스트 --%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<%--useBean action tag --%>
<%--java Bean (=instance) 생성 및 request 영역에 할당 --%>
<%--description : 회원정보 DTO--%>
<jsp:useBean id="memberDTO" class="clientInfo.MemberDTO" scope="request"/>

<%--description : (임시) 회원정보를 저장하는 데이터 베이스를 셋팅--%>
<%--해당 영역에 생성되어있지 않을 경우에 사용--%>
<jsp:useBean id="memberDB" class="clientInfo.MemberDB" scope="application"/>




<!DOCTYPE html>

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

		    // memberDB.memberArrTest();	//test setting

		    
        	String id = request.getParameter("id");
        	String pw = request.getParameter("pw");
        	String name = request.getParameter("name");
        	String email = request.getParameter("email");
        	String address = request.getParameter("address");
 
        	
        	String[] memberArr;
        	
        	
	    	if(!memberDB.isFull()){					// 최대 저장공간 필터링(4번째 아이디 존재유무 확인)
	    		if(memberDB.idFilter(id)){			// id 중복여부
	    			
	    			// // id, pw, name, email, address 저장
	    			memberDB.setMember(id,pw,name,email,address);

	    			
	    			// ** test
	    			// 저장된 값을 확인하기위해 전체 배열을 출력
	    			memberArr = memberDB.getMemberArr();
	    			
	    			
	    			for(int index=0 ; index<20 ; index++){
	    				
	    				if( (index != 0) && (index % 5 == 0)){	
	    					out.println("<br>");	
	    				}
	    				
	    				out.println(memberArr[index]);
	    			}
	    			

	    			
	    			
	    			// 회원가입완료 팝업창 
	    			out.println("<script>alert('회원가입완료')</script>");
	    		
	    			// 로그인창 이동로직 추가예정
	    			
	    			
	    		}else{
	    			
	    			// 경고창 및 회원가입 페이지 redirection
	    			out.println("<script>alert('중복된 아이디가 존재합니다.')</script>");
	    		}
	    	}else{

	    		// 경고창 및 회원가입 페이지 redirection
	    		out.println("<script>alert('최대 저장공간을 초과했습니다'.')</script>");
	    	}
        %>
</body>
</html>