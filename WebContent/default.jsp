<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Default Page</title>
<link rel="stylesheet" href="css/default.css">
<script type="text/javascript" src="/js/script1.js"></script>
<meta name="viewport" content="width=device-width", initial-scale="1"> <!-- 반응형 웹 메타태그 -->
</head>
<body>
   <!-- 헤더 -->
    <header class="hd">
		<jsp:include page="nav.jsp" flush="false"/>
    </header>
    
    <!-- 섹션 -->
    <section class="sc">
        <div class="sc_1">
            공간 1
        <br>
            공간 높이는 뷰의 높이(창 높이 혹은 디바이스 크기, vh)에 따라 유동적으로 바뀜
        </div>
        
        <div class="sc_2">
            공간 2
        </div>
    
        <div class="sc_3">
            공간 3
        </div>
        
        <div class="sc_4">
            공간 4
        </div>
    </section>
    
<!-- JQuery -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</body>
    
</html>