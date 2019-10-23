package com.hl.model;

public class Assess {
	
	private int assessId;
	
	private String userPhone;
	
	private String managerName;
	
	private int num1;
	
	private int num2;
	
	private String assess1;
	
	private String assess2;
	
	private String assessOthers;
	
	private String createTime;

	public int getAssessId() {
		return assessId;
	}

	public void setAssessId(int assessId) {
		this.assessId = assessId;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getManagerName() {
		return managerName;
	}

	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}

	public int getNum1() {
		return num1;
	}

	public void setNum1(int num1) {
		this.num1 = num1;
	}

	public int getNum2() {
		return num2;
	}

	public void setNum2(int num2) {
		this.num2 = num2;
	}

	public String getAssess1() {
		return assess1;
	}

	public void setAssess1(String assess1) {
		this.assess1 = assess1;
	}

	public String getAssess2() {
		return assess2;
	}

	public void setAssess2(String assess2) {
		this.assess2 = assess2;
	}

	public String getAssessOthers() {
		return assessOthers;
	}

	public void setAssessOthers(String assessOthers) {
		this.assessOthers = assessOthers;
	}
	
	public String getcreateTime() {
		return createTime;
	}
	
	public void setcreateTime(String createTime) {
		this.createTime = createTime;
	}
	

	@Override
	public String toString() {
		return "Assess [assessId=" + assessId + ", userPhone=" + userPhone + ", managerName=" + managerName + ", num1="
				+ num1 + ", num2=" + num2 + ", assess1=" + assess1 + ", assess2=" + assess2 + ", assessOthers="
				+ assessOthers + ", createTime=" + createTime + "]";
	}

}
