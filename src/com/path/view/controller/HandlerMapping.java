package com.path.view.controller;

import java.util.HashMap;
import java.util.Map;

import com.path.view.user.JoinController;
import com.path.view.user.LoginController;
import com.path.view.user.LogoutController;
import com.path.view.user.NoticeController;
import com.path.view.user.NoticeDeleteController;
import com.path.view.user.NoticeUpdateController;
import com.path.view.user.ProjectController;
import com.path.view.user.VersionController;


public class HandlerMapping {
	private Map<String, Controller> mappings;

	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		
		// User
		mappings.put("/login.do", new LoginController());
		mappings.put("/logout.do", new LogoutController());
		mappings.put("/signUp.do", new JoinController());
		
		// Project
		mappings.put("/projectAdd.do", new ProjectController());
//		mappings.put("/projectUpdate.do", new ProjectUpdateController());
//		mappings.put("/projectDelete.do", new ProjectDeleteController());
		
		// Notice
		mappings.put("/noticeAdd.do", new NoticeController());
		mappings.put("/noticeUpdate.do", new NoticeUpdateController());
		mappings.put("/noticeDelete.do", new NoticeDeleteController());
		
		// Version
		mappings.put("/versionAdd.do", new VersionController());
//		mappings.put("/versionDelete.do", new VersionDeleteController());
	}

	public Controller getController(String path) {
		return mappings.get(path);
	}
}

