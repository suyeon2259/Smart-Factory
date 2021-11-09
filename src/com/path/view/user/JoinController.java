package com.path.view.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.path.user.MemberDto;
import com.path.user.Impl.MemberDao;
import com.path.view.controller.Controller;


public class JoinController implements Controller {
	@Override	
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String email_role = request.getParameter("role");

		MemberDto mDto = new MemberDto();
		mDto.setId(id);
		mDto.setPassword(pw);
		mDto.setName(name);
		mDto.setEmail(email);	
		mDto.setEmail_role(email_role);
		
		MemberDao mDao = new MemberDao();	
		boolean insertCheck = mDao.memberInsert(mDto);

	    if(insertCheck){
	    	request.setAttribute("joinResult", insertCheck);
			HttpSession session = request.getSession();
			session.setAttribute("idKey", id);
			return "index";
		}else{
	    	request.setAttribute("joinResult", 0);
	    	return "signUp";
		}		
		
		
	}
	
		
	
}
