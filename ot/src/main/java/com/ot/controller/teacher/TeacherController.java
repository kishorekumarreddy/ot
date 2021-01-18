package com.ot.controller.teacher;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ot.serviceI.teacher.TeacherServiceI;
import com.ot.validator.teacher.TeacherValidator;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
	
	@Resource(name="teacherService")
	TeacherServiceI teacherServiceImpl;
	
	@Resource(name="teacherValidator")
	TeacherValidator teacherValidator;
	
	@RequestMapping(value="/teacherLogin", method=RequestMethod.GET)
	public String teacherLogin(HttpServletRequest req, HttpServletResponse resp, Model model) {
		
		return "teacher_login";
	}
	
	@RequestMapping(value="/teacherReg", method=RequestMethod.GET)
	public String teacherRegistration(HttpServletRequest req, HttpServletResponse resp, Model model) {
		
		return "teacher_registration_page";
	}
	
	
	  @RequestMapping(value="saveTeacherRegDtls", method=RequestMethod.POST)
	  public @ResponseBody String teacherRegistrationSaving(HttpServletRequest req
	  , HttpServletResponse resp)throws JSONException{
	  
	  String dataObj = req.getParameter("dataObj");
	  
	  org.json.JSONObject obj = new org.json.JSONObject(dataObj);
	  
	  System.out.println("=======>"+obj);
	  
	  teacherServiceImpl.teacherRegistrationSaving(teacherValidator.validateAndPrepareTeacherRegistrationObject(obj));
	  
	  return "Saved Success"; }
	 
		 
	@RequestMapping(value="/teacherDtls", method=RequestMethod.GET)
	public String teacherDtls(HttpServletRequest req, HttpServletResponse resp, Model model) {
		teacherServiceImpl.getEduMst();
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
	
   
	
	
}
