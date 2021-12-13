package com.path.view.user;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.path.version.VersionDao;
import com.path.version.VersionDto;
import com.path.view.controller.Controller;

public class VersionController implements Controller {
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {

		// 날짜 구하기
		Calendar cal = Calendar.getInstance(); 
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH)+1;
		int day = cal.get(Calendar.DAY_OF_MONTH);
		
		String ver_id = request.getParameter("ver_id");
		String ver_title = request.getParameter("ver_title");
		String ver_version = request.getParameter("ver_version");
		String ver_content = request.getParameter("ver_content");
		String ver_image = request.getParameter("ver_image");
		String ver_date = year+"."+month+"."+day;
		
		VersionDto vDto = new VersionDto();
		vDto.setVer_id(ver_id);
		vDto.setVer_title(ver_title);
		vDto.setVer_version(ver_version);
		vDto.setVer_content(ver_content);
		vDto.setVer_image(ver_image);
		vDto.setVer_date(ver_date);
		
		VersionDao vDao = new VersionDao();
		boolean insertCheck = vDao.versionInsert(vDto);
		
		if(insertCheck) {
			return "version";
		} else {
			return "fail";
		}
	}
}
