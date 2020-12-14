package com.ot.controller.student;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/student")
public class StudentController {

	@RequestMapping(value="/studentReg", method=RequestMethod.GET)
	public String studentRegistration(HttpServletRequest req, HttpServletResponse resp, Model model) {
		
		return "student_registration";
	}
	
	@RequestMapping(value="/otStarting", method=RequestMethod.GET)
	public String studentOtStarting(HttpServletRequest req, HttpServletResponse resp, Model model) {
		
		return "ot_starting_page";
	}
	
	@RequestMapping(value="/studentLogin", method=RequestMethod.GET)
	public String studentLogin(HttpServletRequest req, HttpServletResponse resp, Model model) {
		
		return "student_login";
	}
	
	@RequestMapping(value="/studentLogin2", method=RequestMethod.GET)
	public String studentLogin1(HttpServletRequest req, HttpServletResponse resp, Model model) {
		
		return "student_login_page";
	}
	
}
