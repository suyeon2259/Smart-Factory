<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.path.file.FileDao" %>
<%@ page import="com.path.user.Impl.MemberDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유사도 비교 결과</title>
<link rel="stylesheet" href="css/result.css">
<!--<script type="text/javascript" src="/js/script1.js"></script>-->
<meta name="viewport" content="width=device-width", initial-scale="1"> <!-- 반응형 웹 메타태그 -->
</head>
<body>
<%
	// 현재 로그인 중인 사용자의 id 가져오기
	String userId = (String)session.getAttribute("idKey");
	
	FileDao fileDao = new FileDao();
 	String similarity = fileDao.selectSimilarity(userId);
 	
 	System.out.println(similarity);
%>

<!-- 헤더  -->
    <header class="hd">
		<jsp:include page="nav.jsp" flush="false"/>
    </header>
    
   	<!-- 메뉴 -->
    <div>
		<jsp:include page="menu.jsp" flush="false"/>
	</div>

    <!-- 유사도 비교 -->
    <div class="user_container">
        <div class="user_contents">
           <a>유사도 비교 결과</a>
            <div class="contents_container">
                
                <!-- 이미지 결과  -->
               <div class="contents_1">
               
                    <div class="contents_image1">
                    	<img alt="no image" id="preview-image" src="img/alter.png">
                    </div>

                    <div class="contents_image2">
                    	<img alt="no image" id="preview-image" src="img/alter2.png">
                    </div>
                    ...
                </div>
               
                <div class="contents_2">
                	<p>유사도 비교 결과 : <%= similarity %> %</p>
                </div>
                
            </div>
        </div>
    </div>

<% 
	fileDao.deleteResult(userId); 
	System.out.println("db 삭제 완료");
%>

<!-- JQuery -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</body>
</html>