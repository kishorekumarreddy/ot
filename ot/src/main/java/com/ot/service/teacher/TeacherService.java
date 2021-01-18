package com.ot.service.teacher;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.ot.daoI.teacher.TeacherDaoI;
import com.ot.modal.teacher.OtTeacherRegTran;
import com.ot.serviceI.teacher.TeacherServiceI;


@Service("teacherService")
public class TeacherService implements TeacherServiceI {
     
	@Resource(name="teacherDao")
	TeacherDaoI teacherDaoI;
	
	
	@Override
	public void teacherRegistrationSaving(Map<String,Object> mapObj) {
		OtTeacherRegTran otTeacherRegTran = null; 
		otTeacherRegTran =  (OtTeacherRegTran) mapObj.get("teacherRegObj");
		
		
		teacherDaoI.teacherRegistrationSaving(otTeacherRegTran);
	}

	@Override
	public int teacherRegistrationUpdate(JSONObject obj) {
		teacherDaoI.teacherRegistrationUpdate(obj);
		return 0;
	}

	@Override
	public void teacherRegistrationView(JSONObject obj) {
		teacherDaoI.teacherRegistrationView(obj);
		
	}
    

	@Override
	public void teacherRegistrationDelete(JSONObject obj) {
		teacherDaoI.teacherRegistrationDelete(obj);
		
	}
	
	public TeacherDaoI getLoginId(){
        return this.teacherDaoI;
    }
	public void setLoginId(TeacherDaoI teacherDaoI) {
		this.teacherDaoI = teacherDaoI;
	}
	@Override
	public boolean isValidUser(String loginId, String password)throws Exception {
		return teacherDaoI.isValidUser(loginId, password);
	}
	
	
	
	public TeacherDaoI getMobileNum(){
        return this.teacherDaoI;
    }
	public void setMobileNum(TeacherDaoI teacherDaoI) {
		this.teacherDaoI = teacherDaoI;
	}
	@Override
	public boolean checkDuplicateTeacherMobileNum(String mobileNum)throws Exception {
		return teacherDaoI.checkDuplicateTeacherMobileNum(mobileNum);
	}
	
	
	
	@Override
	public boolean checkDuplicateTeacherEmailId(String emailId)throws Exception {
		return teacherDaoI.checkDuplicateTeacherEmailId(emailId);
		
	}

	@Override
	public List<net.sf.json.JSONObject> getEduMst() {
		return teacherDaoI.getEduMst();
	}
    
}
