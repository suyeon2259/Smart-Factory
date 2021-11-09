package com.path.view.controller;

import java.util.HashMap;
import java.util.Map;

import com.path.view.user.JoinController;
import com.path.view.user.LoginController;
import com.path.view.user.LogoutController;
import com.path.view.user.ProjectController;
import com.path.view.user.UpdateController;


public class HandlerMapping {
	private Map<String, Controller> mappings;

	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		
		// User
		mappings.put("/login.do", new LoginController());
		mappings.put("/logout.do", new LogoutController());
		mappings.put("/signUp.do", new JoinController());
		mappings.put("/update.do", new UpdateController());
		
		// Project
		mappings.put("/projectAdd.do", new ProjectController());
	}

	public Controller getController(String path) {
		return mappings.get(path);
	}
}

