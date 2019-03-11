
<%-- 사용자가 입력한 게시글 정보를 저장하는 로직 --%>


<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("UTF-8");
%>


<jsp:useBean id="postInfoDB" class="clientInfo.PostInfoDB" scope="session"/>


<c:choose>
	<c:when test="${sessionScope.postInfoDB.isEmpty() }">
	
		<jsp:setProperty name="postInfoDB" property="*"/>
		
		${sessionScope.postInfoDB.setAll() }

		<script>alert("게시글이 등록되었습니다! have nice day!!")</script>
		<script>location.href="/RecommendBook_D/content/recommendBook/recommendBook.jsp"</script>		
			
	</c:when>
	
	<c:otherwise>
		<script>alert("게시글 저장공간이 부족합니다! I'm sorry!")</script>
		<script>location.href="/RecommendBook_D/content/post/post.jsp"</script>	
	</c:otherwise>
</c:choose>
