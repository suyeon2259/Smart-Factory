package com.path.projects;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.path.common.JdbcConnectUtil;
import com.path.projects.ProjectDto;

public class ProjectDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;
	
    public boolean projectInsert(ProjectDto pDTO) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        try {
        	con = JdbcConnectUtil.getConnection();
            String strQuery = "insert into projects values(?,?,?,?)";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, pDTO.getPro_id());
            pstmt.setString(2, pDTO.getPro_title());
            pstmt.setString(3, pDTO.getPro_content());
            pstmt.setString(4, pDTO.getPro_date());
            
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
