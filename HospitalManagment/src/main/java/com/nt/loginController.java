package com.nt;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.loginDao.LoginDao;

@Controller
public class loginController {
	
	@Autowired
	private LoginDao Dao;
	
	@RequestMapping("/hrlog")
	public String loginAll() {
		return "loginALL";
		
	}
	

	@RequestMapping("/login")
	public String login(HttpSession session, @RequestParam String username,@RequestParam String password,@RequestParam String role,Model model) {
		
		boolean valid = Dao.validation(username, password, role);
		if (valid) {
			
			session.setAttribute("LoginUser", username);
			if("Doctor".equals(role)) {
				return "PHome";
			}
			else if("hr".equals(role)) {
				return "homeHR";
			}
			
		}
		else {
		model.addAttribute("errorMsg", "please valid password");
			
		}
		return "loginALL";
		
	}
	
	
			
		
		
	}
	
	


