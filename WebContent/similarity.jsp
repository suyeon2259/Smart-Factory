<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>    
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
<title>유사도 비교</title>
<link rel="stylesheet" href="css/similarity.css">
<script type="text/javascript" src="/js/similarity.js"></script>
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

    <!-- 유사도 비교 -->
    <div class="user_container">
        <div class="user_contents">
           <a>유사도 비교</a>
            <div class="contents_container">
                
                <!-- 이미지 업로드 코드 -->
               
               <form action="uploadAction.jsp" method="post" enctype="multipart/form-data">
               <div class="contents_1">
                    <div class="contents_image">
                    	<br><br><br>
                     	도면 이미지 선택 <br>
                        <input type="file" name="planImg" accept="image/*">
                    </div>

                    <div class="contents_image">
                    	<br><br><br>
                    	제품 이미지 선택 <br>
                        <input type="file" name="productImg" accept="image/*">
                    </div>
                </div>
               
                <div class="contents_2">
                	<br>
                    <input type="submit" class="button_1" value="업로드">
                </div>
                </form>
                
            </div>
        </div>
    </div>
    
<!-- JQuery -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</body>
    
</html>