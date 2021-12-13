<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
<link rel="stylesheet" href="css/menu.css">
<script type="text/javascript" src="js/main.js"></script>
<meta name="viewport" content="width=device-width", initial-scale="1"> <!-- 반응형 웹 메타태그 -->
</head>
<body>
    <div id="mnCnt" class="menu_container">
        <div class="menu_exit">
            <a href="#" onclick="menuClose(); return false;"><img src="icon/menu_exit.svg"></a>
        </div>
        <div class="menu_contents">
           <a href="similarity.jsp">유사도 비교</a>
           <a href="projects.jsp">프로젝트</a>
           <a href="notice.jsp">공지사항</a>
        </div>
    </div>
</body>
</html>