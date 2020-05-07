package com.exam.safety.dto;

public class Join3_VO {
	
	private String number;
	private String name;
	private String id;
	private String pw;
	private int phone;
	private String addr;
	private int pcode;
	private String man;
	private String email;

	public Join3_VO() {
		// TODO Auto-generated constructor stub
	}

	public Join3_VO(String number, String name, String id, String pw, int phone, String addr, int pcode, String man,
			String email) {
		super();
		this.number = number;
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.phone = phone;
		this.addr = addr;
		this.pcode = pcode;
		this.man = man;
		this.email = email;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
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

	public String getMan() {
		return man;
	}

	public void setMan(String man) {
		this.man = man;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	

	
	
	
}
