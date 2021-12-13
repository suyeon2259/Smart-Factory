package com.path.notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.path.common.JdbcConnectUtil;
import com.path.notice.NoticeDto;

public class NoticeDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;
	
    public boolean noticeInsert(NoticeDto nDTO) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        try {
        	con = JdbcConnectUtil.getConnection();
            String strQuery = "insert into notice(not_id, not_title, not_date, not_content) values(?,?,?,?)";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, nDTO.getNot_id());
            pstmt.setString(2, nDTO.getNot_title());
            pstmt.setString(3, nDTO.getNot_date());
            pstmt.setString(4, nDTO.getNot_content());
            
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
    
    public boolean noticeUpdate(NoticeDto nDTO) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        try {
        	con = JdbcConnectUtil.getConnection();
            String strQuery = "update notice set not_title = ?, not_content = ? where not_no = '"+nDTO.getNot_no()+"'";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, nDTO.getNot_title());
            pstmt.setString(2, nDTO.getNot_content());
            
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
    
    public boolean noticeDelete(int no) {
        Connection con = null;
        PreparedStatement pstmt = null;
        PreparedStatement pstmt1, pstmt2, pstmt3 = null;
        boolean flag = false;
        try {
        	con = JdbcConnectUtil.getConnection();
            String strQuery = "delete from notice where not_no = ?";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setInt(1, no);
            int count = pstmt.executeUpdate();
            
            // 글 번호 시퀀스 초기화
            String seqQuery1 = "set @COUNT = 0";
            String seqQuery2 = "update notice set not_no = @COUNT:=@COUNT+1";
            String seqQuery3 = "alter table notice AUTO_INCREMENT=1";
            
            pstmt1 = con.prepareStatement(seqQuery1);
            pstmt1.execute();
            pstmt2 = con.prepareStatement(seqQuery2);
            pstmt2.execute();
            pstmt3 = con.prepareStatement(seqQuery3);
            pstmt3.execute();

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
