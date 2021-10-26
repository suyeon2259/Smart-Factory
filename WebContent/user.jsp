<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.path.user.Impl.MemberDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User</title>
<link rel="stylesheet" href="css/user.css">
<!--<script type="text/javascript" src="/js/script1.js"></script>-->
<meta name="viewport" content="width=device-width", initial-scale="1"> <!-- 반응형 웹 메타태그 -->
</head>
<body>

   	<!-- 헤더  -->
    <header class="hd">
		<jsp:include page="nav.jsp" flush="false"/>
    </header>
    
   	<!-- 메뉴 -->
    <div>
		<jsp:include page="menu.jsp" flush="false"/>
	</div>
	
    <!-- 프로필 -->
    <div class="user_container">
        <div class="user_contents">
           <a>프로필</a>
            <div class="contents_container">
               <div class="contents">
                   <%
                   	String userId = (String)session.getAttribute("idKey");
                   	MemberDao dao = new MemberDao();
                   	String name = dao.getUserName(userId);
                   %>
                   	이름 : <%=name%> 
                   	<br>
                   	아이디 : <%=userId%>
                   	<br>
                   <a href=logout.do> 로그아웃 </a>
                </div>
            </div>
        </div>
    </div>
    
<!-- JQuery -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</body>
    
</html>