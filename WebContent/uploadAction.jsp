<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.path.file.FileDao" %>
<%@ page import="python.pythonAction" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.Enumeration"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<!DOCTYPE html>
<html>
<head>

<title>파일 업로드 실행</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
			
		// 파일이 저장될 서버의 경로
		String filePath = "C:/JSP/upload/";
		out.println("절대경로 : "+filePath+"<br>");
		
		int maxSize = 1024*1024*100; //업로드 파일의 최대 크기 (현재100MB)
		String encType = "UTF-8"; //인코딩 방식
		String file1 = ""; // 중복 처리된 이름
		String originalName1 = ""; // 중복 처리 전 실제 원본 이름
		
		MultipartRequest multi
		= new MultipartRequest(request, filePath, maxSize, encType, new DefaultFileRenamePolicy());
		
		// 전송한 전체 파일이름들을 가져옴
        Enumeration fileNames = multi.getFileNames();
		
        /* String planImg = multi.getOriginalFileName("planImg");
		String productImg = multi.getOriginalFileName("productImg"); */
		String planImg = multi.getFilesystemName("planImg");
		String productImg = multi.getFilesystemName("productImg");
				
		String planPath = filePath+planImg;
		String productPath = filePath+productImg;
		
		//현재 로그인 중인 사용자 id
		String userId = (String)session.getAttribute("idKey");
		
		new FileDao().upload(userId, planPath, productPath);
			
		//python 실행
		pythonAction action = new pythonAction();
		action.exeutePython();
	%>
	
	<jsp:forward page="similarityResult.jsp"/>
	
</body>
</html>