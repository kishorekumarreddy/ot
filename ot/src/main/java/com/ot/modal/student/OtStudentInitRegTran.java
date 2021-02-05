package com.ot.modal.student;

import java.util.Date;

public class OtStudentInitRegTran{ 
	private Integer otStudentInitRegTranId;
	private String name;
	private Integer stuClass;
	private String parentName;
	private String parentMobile;
	private String parentEmail;
	private String loginId;
	private String password;
	private Integer loginTranId;
	
	private String recordStatus;
	private Date createdDt;
	

      public void setOtStudentInitRegTranId(Integer otStudentInitRegTranId) {
	  this.otStudentInitRegTranId=otStudentInitRegTranId;
	}

      public Integer getOtStudentInitRegTranId() {
	  return otStudentInitRegTranId;
	}

      public void setName(String name) {
	  this.name=name;
	}

      public String getName() {
	  return name;
	}

      public void setstuClass(Integer stuClass) {
	  this.stuClass=stuClass;
	}

      public Integer getstuClass() {
	  return stuClass;
	}

      public void setParentName(String parentName) {
	  this.parentName=parentName;
	}

      public String getParentName() {
	  return parentName;
	}

      public void setParentMobile(String parentMobile) {
	  this.parentMobile=parentMobile;
	}

      public String getParentMobile() {
	  return parentMobile;
	}

      public void setParentEmail(String parentEmail) {
	  this.parentEmail=parentEmail;
	}

      public String getParentEmail() {
	  return parentEmail;
	}

      public void setLoginId(String loginId) {
	  this.loginId=loginId;
	}

      public String getLoginId() {
	  return loginId;
	}

      public void setPassword(String password) {
	  this.password=password;
	}

      public String getPassword() {
	  return password;
	}

      public void setLoginTranId(Integer loginTranId) {
	  this.loginTranId=loginTranId;
	}

      public Integer getLoginTranId() {
	  return loginTranId;
	}

	public String getRecordStatus() {
		return recordStatus;
	}

	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}

	public Date getCreatedDt() {
		return createdDt;
	}

	public void setCreatedDt(Date createdDt) {
		this.createdDt = createdDt;
	}
      
}

