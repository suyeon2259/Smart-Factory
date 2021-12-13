package python;

import java.io.*;

public class pythonAction {

	  public void exeutePython() throws Exception {
		
			String s;
			
			try {
				ProcessBuilder builder = new ProcessBuilder("python","C:\\jspWorkSpace\\projectPath\\WebContent\\py\\similarity.py");
				
				// processBuilder 실행
				Process process = builder.start();
				
				// 파이썬 출력 결과 읽기
				BufferedReader stdOut = new BufferedReader(new InputStreamReader(process.getInputStream()));
				// 파이썬 에러 결과 읽기 
				BufferedReader stdError = new BufferedReader(new InputStreamReader(process.getErrorStream()));
				
				// "표준 출력"과 "표준 에러 출력"을 출력 
				while ((s = stdOut.readLine()) != null) {System.out.println(s);}; 
				while ((s = stdError.readLine()) != null) {System.err.println(s);};
				
				process.getErrorStream().close(); 
				process.getInputStream().close();
				process.getOutputStream().close();
			
				// 자식 프로세스가 종료될 때까지 기다림
				process.waitFor();
				
			} catch (IOException e){ // 에러 처리
				e.printStackTrace();
//				System.err.println("error-외부 명령 실행에 실패했습니다.\n" + e.getMessage());
			}
	}
	


}




   

