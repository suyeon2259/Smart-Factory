<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Similarity</title>
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
                
                <!-- 이미지 업로드 코드 삽입 예정 -->
               <div class="contents_1">
                    <div class="contents_image">
                     	사진촬영
                     	<br>
                        <input type="file" accept="image/*" capture="camera">
                        <br>
                       	사진 가져오기
                       	<br>
                        <input type="file" accept="image/*">
                    </div>
                    <div class="contents_image">                   
                    </div>
                </div>
                <div class="contents_2">
                    <input type="button" value="유사도 비교" onclick="">
                </div>
            </div>
        </div>
    </div>
    
<!-- JQuery -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</body>
    
</html>