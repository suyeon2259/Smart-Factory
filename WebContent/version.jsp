<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="com.path.version.*" %>
<jsp:useBean id="verMgr" class="com.path.version.VersionMgr" />
<% String id = (String)session.getAttribute("idKey"); %>
<% String project = request.getParameter("project");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Version</title>
<link rel="stylesheet" href="css/version.css">
<script type="text/javascript" src="js/version.js"></script>
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
    
    <!-- 공지 -->
    <div class="notice_container">
        <div class="notice_contents">
           <a><%=project%></a>
            <div class="notice_post_container">
                <div class="notice_post" onclick="location.href='versionAdd.jsp?id=<%=id%>&title=<%=project%>'">
                    <span>버전 추가</span>
                </div>
                
                <%Vector vResult = verMgr.getVersionList(id, project);%>
                <%for(int i=0; i<vResult.size(); i++) {
                	VersionDto version = (VersionDto)vResult.get(i);
                %>
                <div class="notice_post" onclick="Open(<%=i%>)">
                    <span>Ver <%=version.getVer_version() %></span>
                    <span>
                    	<img src="icon/project_minus.svg" id="close<%=i%>" style="display: none;">
                    	<img src="icon/project_add.svg" id="open<%=i%>">
                    </span>
                </div>
                <div class="project_contents" style="display: none;" id="verCon<%=i%>">
                    <div class="version_image">
                        <img src="" alt="no image">
                     </div>
                     
                     <textarea name="ver_anno" class="version_contents_anno" readonly>
                     <%= version.getVer_content() %>
                     </textarea>
                </div>
               <% }%> 
            </div>
        </div>
    </div>
    
<!-- JQuery -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</body>
    
</html>