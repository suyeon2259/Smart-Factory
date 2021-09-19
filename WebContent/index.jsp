<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PATH</title>
<link rel="stylesheet" href="css/style1.css">
<script type="text/javascript" src="js/main.js"></script>
<meta name="viewport" content="width=device-width", initial-scale="1"> <!-- 반응형 웹 메타태그 -->
</head>
<body>
   <!-- 헤더  -->
    <header class="hd">
		<jsp:include page="nav.jsp" flush="false"/>
    </header>
    
    <!-- 섹션 -->
    <section class="sc">
        <div class="sc_1">
            <div class="sc_logo">
                <img src="icon/sc_logo.svg">
            </div>
            <br>
            <b><a class="font_1">Plan And producT cHeck</a></b>
            <a class="font_7">We are the path between architect and manufacturing.</a>
            <br><br>
            <a class="font_2">GET STARTED</a>
        </div>
        
        <div class="sc_2">
            <a class="font_2">What we do</a>
            <br><br><br><br>
        <article class="up-on-scroll">
            <a class="font_3">설계도면과 제품 사이의 유사성을 검사합니다.
            </a><br>
            <div class="sc_2_img">
            <img src="img/sc_2_!.jpg">
            </div>
        </article>
        </div>
        
        
        <div class="sc_3">
            <a class="font_2">Process</a>
            <div class="sc_3_1 up-on-scroll">
                <div class="sc_3_1_img">
                      <img src="img/bg_3.gif">
                </div>
                <div class="sc_3_1_text">
                    <a class="font_4"><b>전처리 작업</b></a>
                      <br>
                    <a class="font_2">보다 정확한 유사도 측정을 위해
                    <br>사진의 윤곽선 추출, 흑백화, 블러처리 등
                    <br>일련의 과정을 거칩니다.
                    </a>
                </div>
            </div>
            <div class="sc_3_2 up-on-scroll">
                <div class="sc_3_2_img">
                      <img src="img/bg_2.gif">
                </div>
                <div class="sc_3_2_text">
                    <a class="font_4"><b>유사도 측정 및 비교</b></a>
                      <br>
                    <a class="font_2">전처리 과정을 거친 두 이미지를 바탕으로
                    <br>유사도 측정 후 결과(%)를 도출합니다.
                    </a>
                </div>
            </div>
        </div>
        
        <div class="sc_4">
            <a class="font_2">About Us</a>
            <div class="sc_4_1 up-on-scroll">
                <span class="sc_4_1_1">
                    <img src="img/bg_1.gif">
                    <a class="font_5">박수연</a>
                    <br>
                    <a class="font_6">팀장</a>
                </span>
                <span class="sc_4_1_2">
                    <img src="img/bg_2.gif">
                    <a class="font_5">한상민</a>
                    <br>
                    <a class="font_6">부팀장</a>
                </span>
            </div>
            <div class="sc_4_2 up-on-scroll">
                <span class="sc_4_2_1">
                    <img src="img/bg_4.gif">
                    <a class="font_5">박강명</a>
                    <br>
                    <a class="font_6">DB 관리</a>
                </span>
                <span class="sc_4_2_2">
                    <img src="img/bg_5.gif">
                    <a class="font_5">조경찬</a>
                    <br>
                    <a class="font_6">프로그래밍</a>
                </span>
                <span class="sc_4_2_3">
                    <img src="img/bg_3.gif">
                    <a class="font_5">이희재</a>
                    <br>
                    <a class="font_6">프로그래밍</a>
                </span>
            </div>
        </div>
    </section>
     <!-- 푸터 -->
    <footer class="ft">
       <a class="font_2">Contact</a><br><br><br><br><br><br>
        <div class="ft_1">
            <div class="ft_logo">
                <img src="icon/sc_logo.svg">
            </div>
            <br>
            <div class="ft_email">
                <img src="icon/ft_email.svg">
            </div>
            <a class="font_3">projectPath@gmail.com</a>
            <br>
            <div class="ft_contact">
                <img src="icon/ft_contact.svg">
            </div>
            <a class="font_3">000-000-0000</a>
        </div>
        <div class="ft_2">
            <div class="ft_2_1">
                <a>@ 2021 Project PATH</a>
            </div>
            <div class="ft_2_2">
                <a>Privacy</a>
            </div>
            <div class="ft_2_3">
                <a>Term</a>
            </div>
        </div>
    </footer>
<!-- JQuery -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    
<!-- Javascript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.7.1/gsap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.7.1/ScrollTrigger.min.js"></script>

</body>
    
</html>