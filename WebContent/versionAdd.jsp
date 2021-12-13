<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String id = (String)session.getAttribute("idKey"); %>
<% String title = request.getParameter("title"); %>
<html>
<head>
<meta charset="UTF-8">
<title>Version</title>
<link rel="stylesheet" href="css/versionAdd.css">
<script type="text/javascript" src="/js/Projects.js"></script>
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
           <a><%=title%></a>
            <div class="notice_post_container">
               <form method="get" action="versionAdd.do">
                <div class="version_top">
                    <input type="text" placeholder="버전" class="version_ver" name="ver_version">
                    <input type="submit" value="저장" class="button_1">
                </div>
                <div class="project_contents">
                    <div class="version_image">
                    <label class="input_file_button" for="input-file">
                       	 이미지 등록
                    </label>
                     <input type="file" id="input-file" name="ver_imag" style="display: none;">
                     <input type="text" name="ver_image" value="imageUrlTest" style="display: none;">
                     <input type="text" name="ver_id" value="<%=id%>" style="display: none;">
                     <input type="text" name="ver_title" value="<%=title%>" style="display: none;"> 
                     </div>
                     <textarea name="ver_content" placeholder="입력하세요." class="version_contents_anno"></textarea>
                </div>      
                </form>
            </div>
        </div>
    </div>
    
<!-- JQuery -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</body>
    
</html>