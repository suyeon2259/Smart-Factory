package com.path.view.user;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.path.notice.NoticeDao;
import com.path.notice.NoticeDto;
import com.path.view.controller.Controller;

public class NoticeDeleteController implements Controller{
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		NoticeDao nDao = new NoticeDao();
		int not_no = Integer.parseInt(request.getParameter("no"));
		
		boolean insertCheck = nDao.noticeDelete(not_no);
		
		if(insertCheck) {
			return "notice";
		} else {
			return "fail";
		}
	}
}
