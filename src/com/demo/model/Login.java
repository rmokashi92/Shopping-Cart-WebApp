package com.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_login")
public class Login {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id; 
	@Column
	private String uname;
	@Column
	private String password;
	
	
	public Login()
	{
		super();
	}
	
	public Login(String uname, String password) {
		super();
		this.uname = uname;
		this.password = password;
	}
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}



}
