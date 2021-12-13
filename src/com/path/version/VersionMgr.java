package com.path.version;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import com.path.common.JdbcConnectUtil;
import com.path.version.VersionDto;

public class VersionMgr {

	private JdbcConnectUtil dbCon = null;
	
	public Vector getVersionList(String id, String pro) throws SQLException {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        Vector ver = new Vector();
		
        try {
            con = dbCon.getConnection();
            String query = "select * from version where ver_id = '"+id+"' and ver_title = '"+pro+"' order by ver_date desc";
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);

            while (rs.next()) {
                VersionDto version = new VersionDto();
                version.setVer_id(rs.getString("ver_id"));
                version.setVer_title(rs.getString("ver_title"));
                version.setVer_version(rs.getString("ver_version"));
                version.setVer_image(rs.getString("ver_image"));
                version.setVer_content(rs.getString("ver_content"));
                version.setVer_date(rs.getString("ver_date"));
                ver.add(version);
            }
            
        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } 
        return ver;
	}
}
