package com.path.version;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.path.common.JdbcConnectUtil;
import com.path.version.VersionDto;

public class VersionDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;
	
    public boolean versionInsert(VersionDto vDTO) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        try {
        	con = JdbcConnectUtil.getConnection();
            String strQuery = "insert into version values(?,?,?,?,?,?)";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, vDTO.getVer_id());
            pstmt.setString(2, vDTO.getVer_title());
            pstmt.setString(3, vDTO.getVer_version());
            pstmt.setString(4, vDTO.getVer_content());
            pstmt.setString(5, vDTO.getVer_image());
            pstmt.setString(6, vDTO.getVer_date());
            
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
    
    public boolean versionDelete(String id, String ver, String title) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        try {
        	con = JdbcConnectUtil.getConnection();
            String strQuery = "delete from version where ver_id = ? ver_title = ? ver_version = ?";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, id);
            pstmt.setString(2, title);
            pstmt.setString(3, ver);
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
    
    
}
