package com.exam.safety.dto;

public class Join1_VO {
	private String id;
	private String name;
	private String pw;
	private String bdate;
	private String email;
	private String addr;
	private int pcode;
	private int gender;
	private int phone;
	
	public Join1_VO() {
	
	}

	

	public Join1_VO(String id, String name, String pw, String bdate, String email, String addr, int pcode, int gender,
			int phone) {
		super();
		this.id = id;
		this.name = name;
		this.pw = pw;
		this.bdate = bdate;
		this.email = email;
		this.addr = addr;
		this.pcode = pcode;
		this.gender = gender;
		this.phone = phone;
	}
	
	



	public Join1_VO(String id, String name, String pw, String email, String addr, int pcode, int gender, int phone) {
		super();
		this.id = id;
		this.name = name;
		this.pw = pw;
		this.email = email;
		this.addr = addr;
		this.pcode = pcode;
		this.gender = gender;
		this.phone = phone;
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getBdate() {
		return bdate;
	}

	public void setBdate(String bdate) {
		this.bdate = bdate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public int getPcode() {
		return pcode;
	}

	public void setPcode(int pcode) {
		this.pcode = pcode;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}
	
	
}
