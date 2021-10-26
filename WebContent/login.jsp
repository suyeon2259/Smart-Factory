<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="css/login.css">
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

    <!-- 로그인 -->
    <div class="login_container">
        <div class="login_contents">
           <a>로그인</a>
            <div class="contents_container">
               <div class="contents">
                <table class="login_Table">
                <form action="login.do" method="post">
                   <tr>
                    <td>아이디</td>
                        <td><input type="text" name="id"></td>
                    </tr>
                    <tr>
                        <td>비밀번호</td>
                        <td><input type="password" name="password"></td>
                    </tr>
                    <tr>
                        <td><a href="signUp.jsp"><input type="button" value="회원가입"></a></td>
                        <td><input type="submit" value="로그인"></td>
                    </tr>
                </form>
                </table>
                </div>
            </div>
        </div>
    </div>
    
<!-- JQuery -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</body>
    
</html>