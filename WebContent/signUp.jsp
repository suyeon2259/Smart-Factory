<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<link rel="stylesheet" href="css/signUp.css">
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

    <!-- 회원가입 -->
    <div class="signUp_container">
        <div class="signUp_contents">
           <a>회원가입</a>
            <div class="contents_container">
               <div class="contents">
                <table class="signUp_Table">
                <form method="get" name="signUpForm" action="signUp.do">
                   <tr>
                    <td>아이디</td>
                        <td><input type="text" name="id"></td>
                        <td><input type="button" value="아이디 중복체크"></td>
                    </tr>
                    <tr>
                        <td>비밀번호</td>
                        <td><input type="password" name="password"></td>
                    </tr>
                    <tr>
                        <td>비밀번호 확인
                        <td><input type="password" name="passwordCheck"></td>
                    </tr>
                    <tr>
                        <td>이름</td>
                        <td><input type="text" name="name"></td>
                    </tr>
                    <tr>
                        <td>E-mail</td>
                        <td><input type="text" name="email"></td>
                        <td style="text-align: left;">
                        <select name="role">
                            <option value="0">직접입력
                            <option value="naver">naver.com
                            <option value="gmail">gmail.com
                        </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"><input type="submit" value="회원가입"></td>
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