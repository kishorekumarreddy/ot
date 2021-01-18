package com.ot.validator.student;

public class StudentValidator {
	
	private String studentFullName;
	private String parentName;
	private String classAppears;
	private String syllabusSpecialization;
	private String nameOfTheState;
	private String schoolMedium;
	private int dob;
	private String schoolName;
	private String schoolLocation;
	private String currentLocation;
	private String state;
	private String mobileNumber;
	private String email;
	private String communicationAddress;
	
	
	public String getStudentFullName() {
		return studentFullName;
	}
	public void setStudentFullName(String studentFullName) {
		this.studentFullName = studentFullName;
	}
	public String getParentName() {
		return parentName;
	}
	public void setParentName(String parentName) {
		this.parentName = parentName;
	}
	public String getClassAppears() {
		return classAppears;
	}
	public void setClassAppears(String classAppears) {
		this.classAppears = classAppears;
	}
	public String getSyllabusSpecialization() {
		return syllabusSpecialization;
	}
	public void setSyllabusSpecialization(String syllabusSpecialization) {
		this.syllabusSpecialization = syllabusSpecialization;
	}
	public String getNameOfTheState() {
		return nameOfTheState;
	}
	public void setNameOfTheState(String nameOfTheState) {
		this.nameOfTheState = nameOfTheState;
	}
	public String getSchoolMedium() {
		return schoolMedium;
	}
	public void setSchoolMedium(String schoolMedium) {
		this.schoolMedium = schoolMedium;
	}
	public int getDob() {
		return dob;
	}
	public void setDob(int dob) {
		this.dob = dob;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	public String getSchoolLocation() {
		return schoolLocation;
	}
	public void setSchoolLocation(String schoolLocation) {
		this.schoolLocation = schoolLocation;
	}
	public String getCurrentLocation() {
		return currentLocation;
	}
	public void setCurrentLocation(String currentLocation) {
		this.currentLocation = currentLocation;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCommunicationAddress() {
		return communicationAddress;
	}
	public void setCommunicationAddress(String communicationAddress) {
		this.communicationAddress = communicationAddress;
	}
	
	@Override
	public String toString() {
		return "StudentValidator [studentFullName=" + studentFullName + ", parentName=" + parentName + ", classAppears="
				+ classAppears + ", syllabusSpecialization=" + syllabusSpecialization + ", nameOfTheState="
				+ nameOfTheState + ", schoolMedium=" + schoolMedium + ", dob=" + dob + ", schoolName=" + schoolName
				+ ", schoolLocation=" + schoolLocation + ", currentLocation=" + currentLocation + ", state=" + state
				+ ", mobileNumber=" + mobileNumber + ", email=" + email + ", communicationAddress="
				+ communicationAddress + "]";
	}

}
