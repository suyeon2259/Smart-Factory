package com.path.projects;

import com.path.common.JdbcConnectUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

public class ProjectMgr {
	
	private JdbcConnectUtil dbCon = null;
	
	public Vector getProjectList(String id) throws SQLException {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        Vector vProject = new Vector();
		
        try {
            con = dbCon.getConnection();
            String query = "select * from projects where ID = '"+id+"' order by DATE desc";
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);

            while (rs.next()) {
                ProjectDto project = new ProjectDto();
                project.setPro_id(rs.getString("ID"));
                project.setPro_title(rs.getString("TITLE"));
                project.setPro_content(rs.getString("CONTENT"));
                project.setPro_date(rs.getString("DATE"));
                vProject.add(project);
            }
            
        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } 
        return vProject;
	}
}
