package com.ot.controller.teacher;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
	
	@RequestMapping(value="/teacherReg", method=RequestMethod.GET)
	public String teacherRegistration(HttpServletRequest req, HttpServletResponse resp, Model model) {
		
		return "teacher_registration_page";
	}
	
	@RequestMapping(value="/teacherDtls", method=RequestMethod.GET)
	public String teacherDtls(HttpServletRequest req, HttpServletResponse resp, Model model) {
		
		return "teacher_details_page";
	}
	
	@RequestMapping(value="/teacherPro", method=RequestMethod.GET)
	public String teacherPro(HttpServletRequest req, HttpServletResponse resp, Model model) {
		
		return "teacher_professinal_dtls_page";
	}
	
	@RequestMapping(value="/teacherPay", method=RequestMethod.GET)
	public String teacherPay(HttpServletRequest req, HttpServletResponse resp, Model model) {
		
		return "teacher_reg_payment_dtls_page";
	}
	
   
	@RequestMapping(value="/teacherLogin", method=RequestMethod.GET)
	public String teacherLogin(HttpServletRequest req, HttpServletResponse resp, Model model) {
		
		return "teacher_login";
	}
	
}
