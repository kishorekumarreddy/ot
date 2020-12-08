package com.ot.controller.student;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/student")
public class StudentController {

	@RequestMapping(value="/registration", method=RequestMethod.GET)
	public String studentRegistration() {
		
		return "student_registration";
	}
}
