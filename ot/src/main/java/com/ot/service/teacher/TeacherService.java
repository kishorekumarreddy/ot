package com.ot.service.teacher;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.ot.daoI.teacher.TeacherDaoI;
import com.ot.modal.teacher.OtTeacherInitRegTran;
import com.ot.modal.teacher.OtTeacherPaymentAccountDtlsTran;
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
	public void teacherPaymentDtlsSaving(Map<String, Object> mapObj) {
		// TODO Auto-generated method stub
		
		OtTeacherPaymentAccountDtlsTran otTeacherPaymentAccountDtlsTran = null; 
		otTeacherPaymentAccountDtlsTran =(OtTeacherPaymentAccountDtlsTran) mapObj.get("teacherPaymentObj");
		
		
		teacherDaoI.teacherPaymentDtlsSaving(otTeacherPaymentAccountDtlsTran);
	}
	@Override
	public void teacherRegInitialSaving(Map<String, Object> mapObj) {
		// TODO Auto-generated method stub
		OtTeacherInitRegTran OtTeacherInitRegTran = null; 
		OtTeacherInitRegTran =(OtTeacherInitRegTran) mapObj.get("teacherInitObj");
		
		
		teacherDaoI.teacherRegInitialSaving(OtTeacherInitRegTran);

		
	}
	
	
	@Override
	public void getEduMst() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void teacherProfessinolDtlsSaving(Map<String, Object> mapObj) {
		// TODO Auto-generated method stub
		
	}

	

	
    
}
