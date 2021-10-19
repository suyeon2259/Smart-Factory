package com.path.user.Impl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.path.common.JdbcConnectUtil;
import com.path.user.MemberDto;

public class MemberDao {
	private static MemberDao mDao;
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;
	
    public boolean loginCheck(String id, String password) {
    	
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean loginCon = false;
        try {
        	con = JdbcConnectUtil.getConnection();
            String strQuery = "select id, password from users where id = ? and password = ?";

            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, id);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
            loginCon = rs.next();
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
        	JdbcConnectUtil.close(con, pstmt, null);
        }
        return loginCon;
    }	
	
    public boolean memberInsert(MemberDto mDTO) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        try {
        	con =  JdbcConnectUtil.getConnection();
            String strQuery = "insert into users values(?,?,?,?)";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, mDTO.getId());
            pstmt.setString(2, mDTO.getPassword());
            pstmt.setString(3, mDTO.getName());
            pstmt.setString(4, mDTO.getEmail());

            int count = pstmt.executeUpdate();

            if (count == 1) {
                flag = true;
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
        	JdbcConnectUtil.close(con, pstmt, null);
        }
        return flag;
    }
    
    public String getUserName(String id) {
    	Connection con = null;
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
    	boolean send = false;
    	String name = null;
    	try {
    		con = JdbcConnectUtil.getConnection();
    		String strQuery = "select * from users where id = '"+id+"'";
    		pstmt = con.prepareStatement(strQuery);
    		rs = pstmt.executeQuery();
    		rs.next();
    		name = rs.getString("name");
    	} catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
        	JdbcConnectUtil.close(con, pstmt, null);
        } 
    	return name;
    }
	
	

}
