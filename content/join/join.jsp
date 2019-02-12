<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

  <title> Join </title>
  
  <meta charset = "utf-8">
  <meta name="description" content = "사용자의 취향을 고려한 도서 추천 웹 사이트">
  <meta name="keywords" content = "book">

  <!-- 전체 영역 단위 CSS-->
  <link href="/RecommendBook_D/content/common/webSiteStyle.css" type="text/css" rel="stylesheet">


  <!-- 해당 page단위 CSS -->
  <link href="joinStyle.css" type="text/css" rel="stylesheet">

   

</head>



<body onload="initJoin()">

  <!-- main penel -->
  <div class="mainPanel">		

  <header>  
  	<h1> Recommend book web site </h1>
  </header>

  <!-- menu panel -->
  <nav>
  		<!-- menu panel -->  
		<%@ include file="/content/common/menuPanel.jspf"%>
  </nav>
  
  </div>

  
  
  

  <section>
  
    <h2> 회원가입 </h2>
  
    <!-- 회원가입 절차 order list -->
    <article>
      <h3> 절차 </h3>
 
      <ol>
        <li>회원정보입력</li>
        <li>개인정보 수집 동의</li>
        <li>개인정보 확인</li>
        <li>회원 심사 1차</li>
        <li>회원 심사 2차</li>
        <li>합격자 통보</li>
        <li>게시글 작성</li>
        <li>추천도서 검색</li>
      </ol>
    </article>

    <!-- 회원가입 양식 -->
    <article>
	  <form name = "joinClient" method = "post" action="joinFilter.jsp" onsubmit= "return joinValidation()">

        <h3> 양식</h3>

        <label class="joinInfo"> 아 이 디&nbsp; : &nbsp;</label>					<input type = "text" 		name="id"		id="id" 		placeholder="아이디를 입력해줘야겠쥬?">
        <%--[장기적 고민]
        <input type="button" id="idCheckBtn" value="중복확인">  
        --%>

        <label class="joinInfo"> 비밀번호 : &nbsp;</label>							<input type = "password" 	name="pw"		id="pw" 		placeholder="잊어버리면 찾을 수가 없슈!">
        <label class="joinInfo"> 이&nbsp; &nbsp; 름&nbsp; : &nbsp;</label>			<input type = "text" 		name="name"		id="name" 		placeholder="이름이 뭐쥬?">
        <label class="joinInfo"> 생년월일 : &nbsp;</label>							<input type = "date"  		name="brathday"	id="brathday" 	placeholder="챙겨주지 않을꺼 알쥬?">
        <label class="joinInfo"> 이 메 일&nbsp; : &nbsp;</label>					<input type = "email" 		name="email"	id="email" 		placeholder="이메일은 @을 넣어야겠쥬?">
        <label class="joinInfo"> 주&nbsp; &nbsp; &nbsp;소&nbsp; : &nbsp;</label>	<input type = "text" 		name="address"	id="address" 	placeholder="솔로인 여성분은 연락처 기입">


        <label class="joinInfo"> 가입경로&nbsp; : &nbsp;</label> 
        <select name = "joinProcess" size = "1"> 
          <option value = "searchInternet"> 인터넷 검색 </option>
          <option value = "recommended"> 지인추천 </option>
          <option value = "advertising"> 광고 </option>
          <option value = "other"> 기타 </option>
        </select>




		<div class="mail">
		
        <fieldset>
          <legend> 광고성 메일 수신여부 </legend>
     
          <label> 수신 : </label>		<input type = "radio" name = "advertising" checked> 
          <label> 미수신 : </label>	<input type = "radio" name = "advertising">
        </fieldset>

        <br>
         <input type="submit" value="회원가입신청">     
        <br>
        
        </div>
        

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
  <script src="initJoin.js"></script>
  
  <!-- menuPanel CSS의 동적인 동작을 위한 로직 -->
  <script src="/RecommendBook_D/content/common/menuPanel.js"></script>  
  
  <!-- 입력한 회원가입 정보의 유효성 검사 -->
  <script src="joinValidation.js"></script>
  
<%--
  <!-- session storage에 저장하는 로직 -->
  <script src="saveInfo_old.js"></script>
   

  <!-- id 중복여부를 확인하는 로직 -->
  <!-- [장기적 고민] 하나의 form에 2개의 submit처리방법은??--!>
  <script src="idFilter_old.js"></script>
--%>
  
  
<body>

</html>