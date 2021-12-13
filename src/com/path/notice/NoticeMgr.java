package com.path.notice;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import com.path.common.JdbcConnectUtil;
import com.path.notice.NoticeDto;

public class NoticeMgr {
	private JdbcConnectUtil dbCon = null;
	
	public Vector getNoticeList() throws SQLException {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        Vector vNotice = new Vector();
		
        try {
            con = dbCon.getConnection();
            String query = "select * from notice order by not_no desc";
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);

            while (rs.next()) {
                NoticeDto notice = new NoticeDto();
                notice.setNot_no(rs.getInt("not_no"));
                notice.setNot_id(rs.getString("not_id"));
                notice.setNot_title(rs.getString("not_title"));
                notice.setNot_content(rs.getString("not_content"));
                notice.setNot_date(rs.getString("not_date"));
                vNotice.add(notice);
            }
            
        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } 
        return vNotice;
	}
	
	public NoticeDto getNoticeContents(int no) {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        NoticeDto notice = new NoticeDto();
        
        try {
            con = dbCon.getConnection();
            String query = "select * from notice where not_no = '"+no+"'";
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);

            while (rs.next()) {
                notice.setNot_no(rs.getInt("not_no"));
                notice.setNot_id(rs.getString("not_id"));
                notice.setNot_title(rs.getString("not_title"));
                notice.setNot_content(rs.getString("not_content"));
                notice.setNot_date(rs.getString("not_date"));
                return notice;
            }
            
        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } 
        return notice;
	}
}
