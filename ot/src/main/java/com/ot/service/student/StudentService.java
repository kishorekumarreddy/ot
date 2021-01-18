package com.ot.service.student;

import javax.annotation.Resource;

import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.ot.daoI.student.StudentDaoI;
import com.ot.sreviceI.student.StudentServiceI;

@Service("studentService")
public class StudentService implements StudentServiceI {
	
	@Resource(name="studentDao")
	StudentDaoI studentDaoi;
	
	@Override
	public void studentRegistrationSaving(JSONObject obj) {
		  studentDaoi.studentRegistrationSaving(obj);
		
	}


}
