package com.ot.controller.common;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login")
public class LoginController {

	@RequestMapping(value="/dashboard", method=RequestMethod.GET)
	public String tecLoginHomeGET(HttpServletRequest req, HttpServletResponse resp, Model model) {
		
		return "teacher_dashboard";
	}
	
	@RequestMapping(value="/stuDashboard", method=RequestMethod.GET)
	public String stuLoginHomeGET(HttpServletRequest req, HttpServletResponse resp, Model model) {
		
		return "student_dashboard";
	}
	@RequestMapping(value="/loginHome", method=RequestMethod.POST)
	public void loginHomePOST(HttpServletRequest req, HttpServletResponse resp, Model model) throws IOException {
		//checkUSer
		resp.sendRedirect(req.getContextPath()+"/login/dashboard");
		
		//return "redirect:/login/dashboard";
	}
}
