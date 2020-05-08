package com.exam.safety.dto;

/*
CREATE TABLE BOARD_FAQ (
	    FAQ_BNO NUMBER(10),
	    FAQ_TITLE VARCHAR2(200),
	    FAQ_INQUIRY VARCHAR2(30),
	    FAQ_DATE DATE,
	    FAQ_CONTENTS VARCHAR2(3000),
	    FAQ_STATUS NUMBER(2),
	    FAQ_HITS NUMBER(5),
	    FAQ_SUBINQUIRY VARCHAR2(50));
*/

public class board_FAQ_DTO {
	private int faq_bno;
	private String faq_title, faq_inquiry, faq_date, faq_contents;
	private int faq_status, faq_hits;
	private String faq_subInquiry;
	
	public board_FAQ_DTO() {
		super();
	}
	
	public board_FAQ_DTO(int faq_bno, String faq_title, String faq_inquiry, String faq_date, String faq_contents,
			int faq_status, int faq_hits, String faq_subInquiry) {
		super();
		this.faq_bno = faq_bno;
		this.faq_title = faq_title;
		this.faq_inquiry = faq_inquiry;
		this.faq_date = faq_date;
		this.faq_contents = faq_contents;
		this.faq_status = faq_status;
		this.faq_hits = faq_hits;
		this.faq_subInquiry = faq_subInquiry;
	}
	
	public int getFaq_bno() {
		return faq_bno;
	}
	public void setFaq_bno(int faq_bno) {
		this.faq_bno = faq_bno;
	}
	public String getFaq_title() {
		return faq_title;
	}
	public void setFaq_title(String faq_title) {
		this.faq_title = faq_title;
	}
	public String getFaq_inquiry() {
		return faq_inquiry;
	}
	public void setFaq_inquiry(String faq_inquiry) {
		this.faq_inquiry = faq_inquiry;
	}
	public String getFaq_date() {
		return faq_date;
	}
	public void setFaq_date(String faq_date) {
		this.faq_date = faq_date;
	}
	public String getFaq_contents() {
		return faq_contents;
	}
	public void setFaq_contents(String faq_contents) {
		this.faq_contents = faq_contents;
	}
	public int getFaq_status() {
		return faq_status;
	}
	public void setFaq_status(int faq_status) {
		this.faq_status = faq_status;
	}
	public int getFaq_hits() {
		return faq_hits;
	}
	public void setFaq_hits(int faq_hits) {
		this.faq_hits = faq_hits;
	}
	
	public String getFaq_subInquiry() {
		return faq_subInquiry;
	}
	public void setFaq_subInquiry(String faq_subInquiry) {
		this.faq_subInquiry = faq_subInquiry;
	}
	

}
