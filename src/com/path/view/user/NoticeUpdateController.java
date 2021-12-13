package com.path.view.user;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.path.notice.NoticeDao;
import com.path.notice.NoticeDto;
import com.path.view.controller.Controller;

public class NoticeUpdateController implements Controller {
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		int not_no = Integer.parseInt(request.getParameter("not_no"));
		String not_title = request.getParameter("not_title");
		String not_content = request.getParameter("not_content");
		
		NoticeDto nDto = new NoticeDto();
		nDto.setNot_no(not_no);
		nDto.setNot_title(not_title);
		nDto.setNot_content(not_content);
		
		NoticeDao nDao = new NoticeDao();
		boolean insertCheck = nDao.noticeUpdate(nDto);
		
		if(insertCheck) {
			return "notice";
		} else {
			return "fail";
		}
	}
}
