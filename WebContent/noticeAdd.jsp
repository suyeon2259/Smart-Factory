<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String userId = (String)session.getAttribute("idKey"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeAdd</title>
<link rel="stylesheet" href="css/noticeAdd.css">
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
           <a>Notice_Add</a>
            <div class="notice_post_container">
               <form method="get" action="noticeAdd.do">
                <div class="add_1">
                    <input type="text" name="not_id" style="display: none;" value="<%= userId %>">
                    <input type="text" name="not_title" class="add_title" placeholder="제목을 입력하세요.">
                </div>
                <div class="add_2">
                     <textarea name="not_content" placeholder="내용을 입력하세요." class="add_content"></textarea>
                </div>
                <div class="add_3">
                <input type="submit" value="등록" class="add_submit">   </div>
                </form>
            </div>
        </div>
    </div>
    
<!-- JQuery -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</body>
    
</html>