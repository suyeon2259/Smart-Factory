<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>도면관리 페이지</title>
    <style>
        @font-face {
            src: url("../font/main_font.ttf");
            font-family: "mf";            
        }

        /* body */
        body {
            width: 100vw;
            max-width: 100%;
            height: auto;
            margin: 0;
            background-color: black;
            color: white;
            text-align: center;
            font-family: "mf";
        }
        
        textarea{
            width:500px; 
            height:100px; 
            resize:none;
        }

        .content {
          display: none;
          padding-bottom: 30px;
        }
        
        #ver-title {
          font-size: 35px;
        }
        
        .ver-content {
          border-bottom: 1px solid #e0e0e0;
        }
        
        .version {
          font-size: 19px;
          padding: 30px 0;
          cursor: pointer;
          border: none;
          outline: none;
          background: none;
          width: 100%;
          text-align: left;
          font-family: "mf";
          color: white;
        }
        
        .version:hover {
          color: gray;
        }
        
        [id$="-toggle"] {
          margin-right: 15px;
        }

        .Btn-edit {
            text-align: right;
        }
      </style>
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

    <section>
        <span id="ver-title">프로젝트 명</span>
        <div class="Btn-edit"><a>편집</a></div>
        
        <div class="ver-content">
            <button class="version" id="ver-1"><span id="ver-1-toggle">▼</span><span>버전 1</span></button>
            <div class="content" id="con-1">
                	상세내용
                <form>
                    <label> v.
                        <input name="ver" type="text" placeholder="버전명"/>
                </form>
                <div class="content-container">
                    <div class="img-container">
                        <span>이미지</span><br>
                        <img style="width: 50%;" id="preview-image" src="img/product_2.png"><br>
                        <input type="file" id="input-image">
                    </div>
                    <div class="comment-container">
                        <span>주석</span><br>
                        <textarea placeholder="변경된 사항 입력"></textarea>
                    </div>
                </div>
                
                <div>
                    <a>저장</a>
                </div>
            </div>
        </div>
        <div class="ver-content">
            <button class="version" id="ver-2"><span id="ver-2-toggle">▼</span><span>버전 2</span></button>
            <div class="content" id="con-2">상세내용</div>
        </div>
        <div class="ver-content">
            <button class="version" id="ver-3"><span id="ver-3-toggle">▼</span><span>버전 3</span></button>
        	<div class="content" id="con-3">상세내용</div>
        </div>
    </section>

    <script>
        // 토글 버튼
        const items = document.querySelectorAll('.version');

        function openCloseAnswer() {
            const answerId = this.id.replace('ver', 'con');

            if(document.getElementById(answerId).style.display === 'block') {
            document.getElementById(answerId).style.display = 'none';
            document.getElementById(this.id + '-toggle').textContent = '▼';
            } else {
            document.getElementById(answerId).style.display = 'block';
            document.getElementById(this.id + '-toggle').textContent = '▲';
            }
        }
        

        items.forEach(item => item.addEventListener('click', openCloseAnswer));

        // 이미지 미리보기
        function readImage(input) {
            // 인풋 태그에 파일이 있는 경우
            if(input.files && input.files[0]) {
                // 이미지 파일인지 검사 (생략)
                // FileReader 인스턴스 생성
                const reader = new FileReader()
                // 이미지가 로드가 된 경우
                reader.onload = e => {
                    const previewImage = document.getElementById("preview-image")
                    previewImage.src = e.target.result
                }
                // reader가 이미지 읽도록 하기
                reader.readAsDataURL(input.files[0])
            }
        }

        // input file에 change 이벤트 부여
        const inputImage = document.getElementById("input-image")
        inputImage.addEventListener("change", e => {
            readImage(e.target)
        })
    </script>
</body>
</html>