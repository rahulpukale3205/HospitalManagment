package com.nt.loginDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class LoginDao {
	
	@Autowired
	private JdbcTemplate template;
	
	public boolean validation(String username,String password,String role) {
		
		Object[] args= {username,password,role};
		Integer count = template.queryForObject("select count(*) from login where username=? and password=? and role=?", Integer.class,args);
		if (count==1) {
			return  true;
		}
		return false;
		}
	
	
	
	public boolean login(String username,String password,String role) {
		Object[] arg= {username,password,role};
		Integer count = template.queryForObject("select count(*) from dlogin where username=? and password=? and role=?", Integer.class,arg);
		
		if (count==1) {
			return true;
			
		}
		return false;
	}
	
	
	}
	
	
