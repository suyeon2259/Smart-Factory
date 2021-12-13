package com.path.view.user;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.path.projects.ProjectDao;
import com.path.projects.ProjectDto;
import com.path.view.controller.Controller;

public class ProjectController implements Controller{
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {

		// 날짜 구하기
		Calendar cal = Calendar.getInstance(); 
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH)+1;
		int day = cal.get(Calendar.DAY_OF_MONTH);
		
		String pro_id = request.getParameter("pro_id");
		String pro_title = request.getParameter("pro_title");
		String pro_content = request.getParameter("pro_content");
		String pro_date = year+"."+month+"."+day;
		
		ProjectDto pDto = new ProjectDto();
		pDto.setPro_id(pro_id);
		pDto.setPro_title(pro_title);
		pDto.setPro_content(pro_content);
		pDto.setPro_date(pro_date);
		
		ProjectDao pDao = new ProjectDao();
		boolean insertCheck = pDao.projectInsert(pDto);
		
		if(insertCheck) {
			return "projects";
		} else {
			return "fail";
		}
	}
}

