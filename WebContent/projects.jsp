<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*" %>
<%@ page import="com.path.projects.*" %>
<jsp:useBean id="proMgr" class="com.path.projects.ProjectMgr" />
<%
	// 세션체크
	String userId = (String)session.getAttribute("idKey");
    if(userId == null) {
		PrintWriter script = response.getWriter();
		script.println("<Script>");
		script.println("alert('로그인이 필요한 서비스입니다.')");
		script.println("location.href='login.jsp'");
		script.println("</Script>");
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Projects</title>
<link rel="stylesheet" href="css/projects.css">
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

    <!-- 도면관리 -->
    <div class="notice_container">
        <div class="notice_contents">
           <a>프로젝트</a>
            <div class="notice_post_container">
            <%Vector vResult = proMgr.getProjectList(userId); %>
            <%for(int i=0; i<vResult.size(); i++) {
            	ProjectDto project = (ProjectDto)vResult.get(i);
            %>
                <div class="notice_post">
                    <span><%=i%></span>
                    <span><%=project.getPro_title()%></span>
                    <span><%=project.getPro_id() %></span>
                    <span><%=project.getPro_date() %></span>
                </div>
            <% }%>
            </div>
            <div class="search_container">
            	<a href="projectAdd.jsp"><input type="button" value="프로젝트 추가"></a>
            </div>
        </div>
    </div>
    
<!-- JQuery -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</body>
    
</html>