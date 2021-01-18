package com.ot.teacher.sqlConsatnts;

public interface TeacherSqlConstants {

	
	public static final String _SEQ_KEY__TEACHER_REG_TRAN_QUERY ="ot_teacher_reg_tran_ot_teacher_reg_tran_id_seq";
	
	
	 public static final String _INS__OT_TEACHER_REG_TRAN =  
				" INSERT INTO ot_teacher_reg_tran("+
					" ot_teacher_reg_tran_id, full_name_of_the_teacher, "+
					" mobile_no, email_id, "+
					" current_location, state, "+
					" highest_edu_qual_mst_id, other_qual, "+
					" passed_out_year, university_board_clg_institute, "+
					" exp_mst_id, tot_yr_exp_mst_id, "+
					" subject, about_subject, "+
					" subject_specialization_mst_id, science_mst_id, "+
					" social_mst_id, language_mst_id, "+
					" other_lang, syllabus_specialization_mst_id, "+
					" name_of_the_state_mst_id, school_medium_mst_id, "+
					" other_school_medium, address, "+
					" mon_fee_expctns_per_student_mst_id, no_student_handle_mst_id, "+
					" login_id, login_tran_id )"+
			  		// APPSQLConstants._INSERT_AUDIT_COLUMN + ")" +
				" Values("+
					" :otTeacherRegTranId, :fullNameOfTheTeacher, "+
					" :mobileNo, :emailId, "+
					" :currentLocation, :state, "+
					" :highestEduQualMstId, :otherQual, "+
					" :passedOutYear, :universityBoardClgInstitute, "+
					" :expMstId, :totYrExpMstId, "+
					" :subject, :aboutSubject, "+
					" :subjectSpecializationMstId, :scienceMstId, "+
					" :socialMstId, :languageMstId, "+
					" :otherLang, :syllabusSpecializationMstId, "+
					" :nameOfTheStateMstId, :schoolMediumMstId, "+
					" :otherSchoolMedium, :address, "+
					" :monFeeExpctnsPerStudentMstId, :noStudentHandleMstId, "+
					" :loginId, :loginTranId )";
			 		// APPSQLConstants._INSERT_AUDIT_COLUMN_PARAM + ")"; 
	
	public static final String SELECT_TEACHER_REG_TRAN_QUERY= 
				    " select  ot_teacher_reg_tran_id, full_name_of_the_teacher, mobile_no, email_id,"
					+ " current_location, State,  highest_edu_qual_mst_id, other_qual, passed_out_year,"
					+ " university_board_clg_institute, exp_mst_id, tot_yr_exp_mst_id, subject, about_subject,"
					+ " subject_specialization_mst_id, science_mst_id, social_mst_id, language_mst_id, other_lang,"
					+ " syllabus_specialization_mst_id, name_of_the_state_mst_id, school_medium_mst_id, other_school_medium,"
					+ " address, mon_fee_expctns_per_student_mst_id, no_student_handle_mst_id, login_id, login_tran_id, version_id,"
					+ " created_by, created_dt, last_updated_by, last_updated_dt, session_id, record_status,"
					+ " from ot_teacher_reg_tran"
					+ " WHERE record_status = 'A'";
			
	public static final String UPD_TEACHER_REG_TRAN_QUERY=
		             "SELECT login_id, mobile_no, "
		            + " FROM ot_teacher_reg_tran, "
		            + " WHERE record_status = 'A' ";
	
	
	public static final String DELETE_TEACHER_REG_TRAN_QUERY=
					  " DELETE from ot_teacher_reg_tran , "
					+ " WHERE login_id and record_status = 'A' ";
	
	public static final String INS_TEACHER_CLASESS_HADLE_TRAN=
			"insert into ot_classes_handle_tran"+"("
					+ " ot_classes_handle_tran_id, "
					+ " ot_teacher_reg_tran_id, "
				    + " ot_classes_handle_mst_id, "
					+ " login_id, "
					+ " login_tran_id, "
					+ " version_id, "
					+ " created_by, "
					+ " created_dt, "
					+ " last_updated_by, "
					+ " last_updated_dt, "
					+ " session_id, "
					+ " record_status )"
						
				   +"VALUES("
				    + " :, "
				    + " :, "
				    + " :, "
				    + " :, "
				    + ")";
	
	public static final String SELECT_TEACHER_CLASESS_HADLE =""
					+ "SELECT ot_classes_handle_tran ot_teacher_reg_tran_id,ot_classes_handle_mst_id, login_id,"
					+ " login_tran_id, version_id, created_by, created_dt, last_updated_by, created_dt, last_updated_by,"
					+ " last_updated_dt, session_id, record_status,"
					+ " from ot_classes_handle_tran,"
					+ " WHERE record_status = 'A' ";
	
	public static final String UPD_TEACHER_CLASESS_HADLE_TRAN=
			     "SELECT login_id, ot_classes_handle_tran_id, "
		            + " FROM ot_classes_handle_tran, "
		            + " WHERE record_status = 'A' ";	
	public static final String DELETE_TEACHER_CLASESS_HADLE_TRAN=
					  " DELETE from ot_classes_handle_tran , "
					+ " WHERE login_id and record_status = 'A' ";
	
	public static final String INS_TEACHER_PAYMENT_DTLS_TRAN=
			"insert into ot_teacher_payment_account_dtls_tran"+"("
				    + " ot_teacher_payment_account_dtls_tran_id "
				    + " ot_teacher_reg_tran_id "
				    + " account_no  "
				    + " ifsc_code  "
				    + " gpay_no  "
				    + " phone_pay_no  "
				    + " paytm_no  "
				    + " login_id "
				    + " login_tran_id "
				    + " version_id "
				    + " created_by "
				    + " created_dt "
				    + " last_updated_by "
				    + " last_updated_dt "
				    + " session_id "
				    + " record_status )"
				+"value("
					+ " :accountNo, "
					+ " :ifscCode,"
					+ " :gpayNo,"
					+ " :phonePayNo,"
					+ " :paytmNo)";
	
	public static final String UPD_TEACHER_PAYMENT_DTLS_TRAN=
			"SELECT login_id, ot_classes_handle_tran_id, "
		            + " FROM ot_teacher_payment_account_dtls_tran, "
		            + " WHERE record_status = 'A' ";	
	
	public static final String DEL_TEACHER_PAYMENT_DTLS_TRAN=
					  " DELETE from ot_teacher_payment_account_dtls_tran, "
					+ " WHERE login_id and record_status = 'A' ";
	
	
	public static final String INS_TEACHER_AVILABLE_DTLS_TRAN=
			"insert into tran"+"("
					+ " ot_timings_available_tran_id, "
					+ " ot_teacher_reg_tran_id, "
					+ " ot_timings_available_mst_id, "
					+ " login_id, "
				    + " login_tran_id, "
				    + " version_id, "
				    + " created_by, "
				    + " created_dt, "
				    + " last_updated_by, "
				    + " last_updated_dt, "
				    + " session_id, "
				    + " record_status, )"
				+"value("
					+ ""
					+ ""
					+ ")";

	public static final String _GET_EDU_MST = 
			"select * from ot_highest_educational_qualificaton_mst";
	
}

