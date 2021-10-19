<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>nav</title>
<link rel="stylesheet" href="css/default.css">
<!-- <script type="text/javascript" src="js/main.js"></script> -->
</head>
<body>
		<a href="index.jsp">
        <div class="hd_logo">
            <img src="icon/hd_logo_ic.svg">
        </div>
        </a>
        
        <a href="#" onclick="menuOpen(); return false;">
        <div class="hd_menu">
            <img src="icon/menu.svg">
        </div>
        </a>
        
        <% 
        String id = (String)session.getAttribute("idKey"); 
        if(id == null) {
        %>	
		<a href="login.jsp">
        <div class="hd_user">
            <img src="icon/user.svg">
        </div>
		</a>
        <% 
        } else {
        	
        %>	
        <a href="user.jsp">
        <div class="hd_user">
            <img src="icon/user.svg">
        </div>
		</a>
        <% 
        }
        %>
        

		<!--         
        <a href="user.jsp">
        <div class="hd_user">
            <img src="icon/user.svg">
        </div>
		</a>
		 -->
</body>
</html>