package com.ot.service.student;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ot.daoI.student.StudentDaoI;
import com.ot.modal.student.OtStudentInitRegTran;
import com.ot.sreviceI.student.StudentServiceI;

@Service("studentService")
public class StudentService implements StudentServiceI {
	
	@Resource(name="studentDao")
	StudentDaoI studentDaoI;
	
	public void studentRegInitialSaving(Map<String, Object> mapObj) {
		// TODO Auto-generated method stub
		OtStudentInitRegTran OtStudentInitRegTran = null; 
		OtStudentInitRegTran =(OtStudentInitRegTran) mapObj.get("studentInitObj");
		
		
		studentDaoI.studentRegInitialSaving(OtStudentInitRegTran);
		
	}

}
