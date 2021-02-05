package com.ot.controller.student;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ot.sreviceI.student.StudentServiceI;
import com.ot.validator.student.StudentValidator;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@Resource(name="studentService")
	StudentServiceI studentServiceI;
	
	@Resource(name="studentValidator")
	StudentValidator studentValidator;
	
	
	
	/*
	 * @RequestMapping(value = "/studentLogin", method = RequestMethod.GET) public
	 * String studentLogin(HttpServletRequest req, HttpServletResponse resp, Model
	 * model) {
	 * 
	 * return "student_login"; }
	 */
	@RequestMapping(value = "/studentLogin", method = RequestMethod.GET)
	public String studentLoginV1(HttpServletRequest req, HttpServletResponse resp, Model model) {

		return "student_login_v1";
		
		
	}
	
	@RequestMapping(value = "/studentRegInitialV1", method = RequestMethod.GET)
	public String studentRegistrationV1(HttpServletRequest req, HttpServletResponse resp, Model model) {

		return "student_initial_registration_v1";
		
		
	}
	
	@RequestMapping(value = "/studentRegInitial", method = RequestMethod.GET)
	public String studentInitialRegistration(HttpServletRequest req, HttpServletResponse resp, Model model) {

		  return "student_initial_registration"; 
	}
	@RequestMapping(value="studentRegInitialSaving", method=RequestMethod.POST)
	  public @ResponseBody String studentRegInitialSaving(HttpServletRequest req, HttpServletResponse resp)throws JSONException{
	  
	  String dataObj = req.getParameter("dataObj");
	  
	  org.json.JSONObject obj = new org.json.JSONObject(dataObj);
	  
	  System.out.println("=======>"+obj);
	  
	  studentServiceI.studentRegInitialSaving(studentValidator.validateAndPrepareStudentInitDtlsObject(obj));
	  
	  return "Saved Success";
	  }

	@RequestMapping(value = "/studentReg", method = RequestMethod.GET)
	public String studentRegistration(HttpServletRequest req, HttpServletResponse resp, Model model) {

		  return "student_registration"; 
	}
	 

	@RequestMapping(value = "/otStarting", method = RequestMethod.GET)
	public String studentOtStarting(HttpServletRequest req, HttpServletResponse resp, Model model) {

		return "ot_starting_page";
	}
	@RequestMapping(value = "/otListCourses", method = RequestMethod.GET)
	public String otListCourses(HttpServletRequest req, HttpServletResponse resp, Model model) {

		return "ot_list_courses";
	}
	
	@RequestMapping(value="/listInstructors", method=RequestMethod.GET)
	public String listInstructors(HttpServletRequest req, HttpServletResponse resp, Model model) {
		
		return "ot_list_instructors";
	}
	
	
}
