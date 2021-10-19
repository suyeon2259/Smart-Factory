package process_test;
import java.util.*;

import org.python.util.PythonInterpreter;

public class Main {
	private static PythonInterpreter interpreter;
	// 21.09.27
	//  * 파이썬 모듈 호출 이슈
	
	public static void main(String args[]) {		
		String a = "'../img/result.jpg'"; 	// JSP상에서 이미지 경로를 받아옴
		String b = "'../img/result2.jpg'"; 	// 지금은 임의값 지정 
		
		interpreter = new PythonInterpreter(); 
		interpreter.execfile("py/Similarity.py"); // 파이썬 파일 호출
		interpreter.exec("similar("+a+","+b+")"); // 파이썬 코드 실행
	}
}
