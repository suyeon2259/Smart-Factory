<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*" %>
<%@ page import="com.path.notice.*" %>
<jsp:useBean id="notMgr" class="com.path.notice.NoticeMgr" />
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
<title>Notice</title>
<link rel="stylesheet" href="css/notice.css">
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
    
    <!-- 공지 -->
    <div class="notice_container">
        <div class="notice_contents">
           <a>공지사항</a>
            <div class="notice_post_container">
            <%Vector vResult = notMgr.getNoticeList(); %>
            <%for(int i=0; i<vResult.size(); i++) {
            	NoticeDto notice = (NoticeDto)vResult.get(i);
            %>
                <div class="notice_post" onclick="location.href='noticePost.jsp?no=<%=notice.getNot_no()%>';">
					<span><%=i+1%></span>
                    <span><%=notice.getNot_title()%></span>
                    <span><%=notice.getNot_id() %></span>
                    <span><%=notice.getNot_date() %></span>
                </div>
            <% }%>
            </div>
            
            <div class="bottom_menu">
            	<a href="noticeAdd.jsp"><input type="button" value="글 쓰기" class="button_1"></a>
            </div>
            
            <div class="search_container">
                <form class="search_form" action="index.html" method="get" accept-charset="utf-8">
                    <select class="search_list" name="search_list">
                        <option value="제목">제목</option>
                        <option value="내용">내용</option>
                        <option value="제목+내용">제목+내용</option>
                        <option value="작성자">작성자</option>
                    </select>
                    <input type="text" name="search_text" class="search_text">
                    <input type="image" class="search_button" src="icon/search.png" border="0" alt="submit">
                </form>
            </div>
        </div>
    </div>
    
<!-- JQuery -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</body>
    
</html>