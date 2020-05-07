package com.exam.safety.dto;

/*

	CREATE TABLE BOARD_QA(
	    QA_BNO NUMBER(10),
	    QA_ID VARCHAR2(30) PRIMARY KEY,
	    QA_TITLE VARCHAR2(50),
	    QA_INQUIRY VARCHAR2(30),
	    QA_DATE DATE,
	    QA_CONTENTS VARCHAR2(2000),
	    QA_EMAIL VARCHAR2(200),
	    QA_IMG VARCHAR2(100),
	    QA_IP VARCHAR2(16),
	    QA_STATUS NUMBER(2),
	    QA_HITS NUMBER(5),
	    QA_E_ST NUMBER(2));
	
	CREATE SEQUENCE BOARD_QA_SEQ
	INCREMENT BY 1
	START WITH 1
	MINVALUE 1
	NOCYCLE
	NOCACHE;

*/

public class board_QA_DTO {
	private int qa_bno, qa_status, qa_hits;
	private String qa_id, qa_title, qa_inquiry, qa_date, qa_contents, qa_email, qa_img, qa_ip;
	private int qa_e_st;
	
	public board_QA_DTO() {
		super();
	}


	public board_QA_DTO(int qa_bno, String qa_id, String qa_title, String qa_inquiry,
			String qa_date, String qa_contents, String qa_email, String qa_img,
			String qa_ip, int qa_status, int qa_hits, int qa_e_st) {
		super();
		this.qa_bno = qa_bno;
		this.qa_status = qa_status;
		this.qa_hits = qa_hits;
		this.qa_id = qa_id;
		this.qa_title = qa_title;
		this.qa_inquiry = qa_inquiry;
		this.qa_date = qa_date;
		this.qa_contents = qa_contents;
		this.qa_email = qa_email;
		this.qa_img = qa_img;
		this.qa_ip = qa_ip;
		this.qa_e_st = qa_e_st;
	}


	public int getQa_bno() {
		return qa_bno;
	}


	public void setQa_bno(int qa_bno) {
		this.qa_bno = qa_bno;
	}


	public int getQa_status() {
		return qa_status;
	}


	public void setQa_status(int qa_status) {
		this.qa_status = qa_status;
	}


	public int getQa_hits() {
		return qa_hits;
	}


	public void setQa_hits(int qa_hits) {
		this.qa_hits = qa_hits;
	}


	public String getQa_id() {
		return qa_id;
	}


	public void setQa_id(String qa_id) {
		this.qa_id = qa_id;
	}


	public String getQa_title() {
		return qa_title;
	}


	public void setQa_title(String qa_title) {
		this.qa_title = qa_title;
	}


	public String getQa_inquiry() {
		return qa_inquiry;
	}


	public void setQa_inquiry(String qa_inquiry) {
		this.qa_inquiry = qa_inquiry;
	}


	public String getQa_date() {
		return qa_date;
	}


	public void setQa_date(String qa_date) {
		this.qa_date = qa_date;
	}


	public String getQa_contents() {
		return qa_contents;
	}


	public void setQa_contents(String qa_contents) {
		this.qa_contents = qa_contents;
	}


	public String getQa_email() {
		return qa_email;
	}


	public void setQa_email(String qa_email) {
		this.qa_email = qa_email;
	}


	public String getQa_img() {
		return qa_img;
	}


	public void setQa_img(String qa_img) {
		this.qa_img = qa_img;
	}


	public String getQa_ip() {
		return qa_ip;
	}


	public void setQa_ip(String qa_ip) {
		this.qa_ip = qa_ip;
	}
	
	public int getQa_e_st() {
		return qa_e_st;
	}
	
	public void setQa_e_st(int qa_e_st) {
		this.qa_e_st = qa_e_st;
	}

	
}
