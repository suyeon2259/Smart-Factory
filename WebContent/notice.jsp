<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
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
                <div class="notice_post">
                    <span>1</span>
                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span>
                    <span>관리자</span>
                    <span>2021.12.35</span>
                </div>
                <div class="notice_post">
                    <span>2</span>
                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span>
                    <span>Lorem ipsum dolor sit amet, consectetur</span>
                    <span>2021.10.09</span>
                </div>
                <div class="notice_post">
                    <span>3</span>
                    <span>공지사항입니다.</span>
                    <span>관리자</span>
                    <span>2021.02.09</span>
                </div>
                <div class="notice_post">
                    <span>4</span>
                    <span>공지사항입니다.</span>
                    <span>관리자</span>
                    <span>2021.10.09</span>
                </div>
                <div class="notice_post">
                    <span>5</span>
                    <span>공지사항입니다.</span>
                    <span>관리자</span>
                    <span>2021.10.09</span>
                </div>
                <div class="notice_post">
                    <span>6</span>
                    <span>공지사항입니다.</span>
                    <span>관리자</span>
                    <span>2021.10.09</span>
                </div>
                <div class="notice_post">
                    <span>7</span>
                    <span>공지사항입니다.</span>
                    <span>관리자</span>
                    <span>2021.10.09</span>
                </div>
                <div class="notice_post">
                    <span>8</span>
                    <span>공지사항입니다.</span>
                    <span>관리자</span>
                    <span>2021.10.09</span>
                </div>
                <div class="notice_post">
                    <span>9</span>
                    <span>공지사항입니다.</span>
                    <span>관리자</span>
                    <span>2021.10.09</span>
                </div>
                <div class="notice_post">
                    <span>10</span>
                    <span>공지사항입니다.</span>
                    <span>관리자</span>
                    <span>2021.10.09</span>
                </div>
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