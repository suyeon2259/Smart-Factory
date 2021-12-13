package com.path.file;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;
import com.path.common.JdbcConnectUtil;
import com.path.file.FileDto;

public class FileDao {
	
	private Connection con;
	
	//생성자
	public FileDao() {
		try {
			con = JdbcConnectUtil.getConnection();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int upload(String id, String planImg, String productImg) {
		String strQuery = "insert into file (id, planImg, productImg) values (?,?,?)";
		
		try {
			PreparedStatement pstmt = con.prepareStatement(strQuery);
			
			// ?값 입력 : set데이터타입(물음표 순서, 값)
			pstmt.setString(1, id);
			pstmt.setString(2, planImg);
            pstmt.setString(3, productImg);
            
            return pstmt.executeUpdate();
            
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public String selectSimilarity(String id){
		String strQuery = "select similarity from file where id=?";
		String similarity = null;
		
		try {
			PreparedStatement pstmt = con.prepareStatement(strQuery);
			pstmt.setString(1, id);
			
            ResultSet rs = pstmt.executeQuery();
            
            rs.next();
			similarity = rs.getString("similarity");
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return similarity;
	}
	
	public int deleteResult(String id) {
		String strQuery = "delete from file where id=?";
		
		try {
			PreparedStatement pstmt = con.prepareStatement(strQuery);
			
			// ?값 입력 : set데이터타입(물음표 순서, 값)
			pstmt.setString(1, id);
            
            return pstmt.executeUpdate();
            
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	
	
}
