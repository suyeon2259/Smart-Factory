package com.path.user;

public class MemberDto {
	
	private String id;
	private String password;
	private String name;
	private String email;
	private String email_role;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmail_role() {
		return email_role;
	}
	public void setEmail_role(String email_role) {
		this.email_role = email_role;
	}
	
}
