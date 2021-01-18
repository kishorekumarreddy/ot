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

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@Resource(name="studentService")
	StudentServiceI studentServiceI;
	
	@RequestMapping(value = "/studentLogin", method = RequestMethod.GET)
	public String studentLogin(HttpServletRequest req, HttpServletResponse resp, Model model) {

		return "student_login";
		
		
	}

	@RequestMapping(value = "/studentReg", method = RequestMethod.GET)
	public String studentRegistration(HttpServletRequest req, HttpServletResponse resp, Model model) {

		  return "student_registration"; 
	
		  
	}
	
	
	  @RequestMapping(value="studentRegionSaving", method=RequestMethod.POST)
	  public @ResponseBody String studentRegistrationSaving(HttpServletRequest req
	  , HttpServletResponse resp)throws JSONException{
	  
	  String dataObj = req.getParameter("dataObj");
	  
	  org.json.JSONObject obj = new org.json.JSONObject(dataObj);
	  
	  System.out.println("=======>"+obj);
	  
	  studentServiceI.studentRegistrationSaving(obj);
	  
	  return "student_registration";
	  
	  }
	 
	 

	@RequestMapping(value = "/otStarting", method = RequestMethod.GET)
	public String studentOtStarting(HttpServletRequest req, HttpServletResponse resp, Model model) {

		return "ot_starting_page";
	}

	
}
