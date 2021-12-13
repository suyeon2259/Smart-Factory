package com.path.view.user;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.path.notice.NoticeDao;
import com.path.notice.NoticeDto;
import com.path.view.controller.Controller;

public class NoticeController implements Controller {
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {

		// 날짜 구하기
		Calendar cal = Calendar.getInstance(); 
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH)+1;
		int day = cal.get(Calendar.DAY_OF_MONTH);
		
		String not_id = request.getParameter("not_id");
		String not_title = request.getParameter("not_title");
		String not_content = request.getParameter("not_content");
		String not_date = year+"."+month+"."+day;
		
		NoticeDto nDto = new NoticeDto();
		nDto.setNot_id(not_id);
		nDto.setNot_title(not_title);
		nDto.setNot_content(not_content);
		nDto.setNot_date(not_date);
		
		NoticeDao nDao = new NoticeDao();
		boolean insertCheck = nDao.noticeInsert(nDto);
		
		if(insertCheck) {
			return "notice";
		} else {
			return "fail";
		}
	}
}
