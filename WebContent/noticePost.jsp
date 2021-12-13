<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*" %>
<%@ page import="com.path.notice.*" %>
<jsp:useBean id="notMgr" class="com.path.notice.NoticeMgr"/>
<% 
   String userId = (String)session.getAttribute("idKey");
   int no = Integer.parseInt(request.getParameter("no"));
   NoticeDto nDto = new NoticeDto();
   nDto = notMgr.getNoticeContents(no);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticePost</title>
<link rel="stylesheet" href="css/noticePost.css">
<!--<script type="text/javascript" src="/js/Projects.js"></script>-->
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
   
    <!-- 공지사항 추가 -->
    <div class="notice_container">
        <div class="notice_contents">
           <a>Notice</a>
            <div class="notice_post_container">
               <form method="get" action="noticeDelete.do">
                <div class="contents_container">
                
                <div class="top_title">
                <%=nDto.getNot_title() %>
                </div>

                <div class="post_contents">
                <pre><%=nDto.getNot_content() %></pre>     
                </div>
                
                <div class="bottom_menu">
                <div class="bottom_menu1">
                <a href="notice.jsp"><input type="button" value="글 목록" class="button_1"></a>
                <a href="#"><input type="button" value="이전" class="button_1"></a>
                <a href="#"><input type="button" value="다음" class="button_1"></a>
                </div>
                
                <%if(nDto.getNot_id().equals(userId)) { %>
                <div class="bottom_menu2">
                <a href="noticeUpdate.jsp?no=<%=no%>"><input type="button" value="수정" class="button_1"></a>
                <a href="#"><input type="submit" value="삭제" class="button_1"></a>
                <input type="text" style="display: none;" name="no" value=<%=no%>>
                </div>
                <% } %>
                </div>
                </div>
               </form>
            </div>
        </div>
    </div>
    
<!-- JQuery -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</body>
    
</html>