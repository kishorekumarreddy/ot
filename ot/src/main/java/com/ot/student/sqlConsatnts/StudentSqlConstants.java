package com.ot.student.sqlConsatnts;

public interface StudentSqlConstants {
	
	 public static final String OT_STUDENT_INIT_REG_TRAN_SEQ = "ot_student_init_reg_tran_seq";
	 
	  public static final String _INS__OT_STUDENT_INIT_REG_TRAN =  
				" INSERT INTO ot_student_init_reg_tran("+
					" ot_student_init_reg_tran_id, name, "+
					" stu_class, parent_name, "+
					" parent_mobile, parent_email, "+
					" login_id, password, created_dt, record_status )" +
				" Values("+
					" :otStudentInitRegTranId, :name, "+
					" :stuClass, :parentName, "+
					" :parentMobile, :parentEmail, "+
					" :loginId, :password, :createdDt, :recordStatus)";

	
}
