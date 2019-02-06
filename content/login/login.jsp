<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

  <title> Recommend book </title>
  
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset = "utf-8">
  <meta name="description" content = "사용자의 취향을 고려한 도서 추천 웹 사이트">
  <meta name="keywords" content = "book">
  
  <!-- 전체 영역 단위 CSS -->
  <link href="/RecommendBook_D/content/common/webSiteStyle.css" type="text/css" rel="stylesheet">

  <!-- 해당 page단위 CSS -->
  <link href="loginStyle.css" type="text/css" rel="stylesheet">

</head>



<body onload="initLogin()">

  <!-- main penel -->
  <div class="mainPanel">		

  <header>  
  	<h1> Recommend book web site </h1>
  </header>

  <nav>
  		<!-- menu panel -->  
		<%@ include file="/content/common/menuPanel.jspf"%>
  </nav>

  </div>



  <section>
    
    <article>
    <h2>로그인 페이지에 오신것을 환영합니다 ^-^ </h2>
    </article>


	<article>
		<%--
		유효성 검사완료 후 로그인완료 페이지로 전환 (로그아웃 시 까지 유지해야함)
		javascript 으로 쿠키에 로그인 flag 저장
		<form action="test.html" method="post">
 		--%>
	 	<form>
    	<label class="loginInfo"> ID </label><input type = "text" 		id = "id" name="idPara" placeholder="문자입력">
    	<label class="loginInfo"> PW </label><input type = "password"	id = "pw" name="pwPara" placeholder="숫자입력">

	   	<div align="center"><input type="submit" id="loginBtn" value="로그인"></div>
    
		</form>
	</article>

  </section>

  <hr>
  
  
  <!-- reference contents -->
  <aside> 
    참고 : 박광호의 기술 블로그<a href = "http://solt.tistory.com" target = "_blank" title = "극논리주의 짠백이">
    (solt.tistory.com) </a>
  </aside>		


  <!-- 저작권 정보, 연락처 등-->
  <footer> 
    저작권 : recommend book web site는 <mark>박광호(웹 프로그래머)에게 저작권</mark>이 있습니다
  </footer>


  <!-- ----------------------------------------------------------------------------------------- -->

  <!-- web page loading 시 초기화 로직 -->
  <script src="initLogin.js"></script>
  
  <!-- menuPanel CSS의 동적인 동작을 위한 로직 -->
  <script src="/RecommendBook_D/content/common/menuPanel.js"></script>
  
  <!-- login 필터링을 위한 로직 -->
  <script src="loginFilter.js"></script>
  
  <!-- 로그인을 위한 session storage 조회 및 비교 로직-->
  <script src="selectInfo.js"></script>
  

</body>

</html>