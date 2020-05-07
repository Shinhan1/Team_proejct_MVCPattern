package com.exam.safety.dto;
/*
CREATE TABLE BOARD_QA_RE(
	    QA_RE_BNO NUMBER(10),
	    QA_RE_ID VARCHAR2(30),
	    QA_RE_RESPONSE VARCHAR2(20),
	    QA_RE_CONTENTS VARCHAR2(2000),
	    QA_RE_DATE DATE,
	    QA_RE_REF NUMBER(10));
*/


public class board_QA_Re_VO {
	private int qa_re_bno;
	private String qa_re_id, qa_re_response, qa_re_contents, qa_re_date;
	private int qa_re_ref;
	
	
	public board_QA_Re_VO() {
		super();
	}

	public board_QA_Re_VO(int qa_re_bno, String qa_re_id, String qa_re_response, String qa_re_contents,
			String qa_re_date, int qa_re_ref) {
		super();
		this.qa_re_bno = qa_re_bno;
		this.qa_re_id = qa_re_id;
		this.qa_re_response = qa_re_response;
		this.qa_re_contents = qa_re_contents;
		this.qa_re_date = qa_re_date;
		this.qa_re_ref = qa_re_ref;
	}

	public int getQa_re_bno() {
		return qa_re_bno;
	}

	public void setQa_re_bno(int qa_re_bno) {
		this.qa_re_bno = qa_re_bno;
	}

	public String getQa_re_id() {
		return qa_re_id;
	}

	public void setQa_re_id(String qa_re_id) {
		this.qa_re_id = qa_re_id;
	}

	public String getQa_re_response() {
		return qa_re_response;
	}

	public void setQa_re_response(String qa_re_response) {
		this.qa_re_response = qa_re_response;
	}

	public String getQa_re_contents() {
		return qa_re_contents;
	}

	public void setQa_re_contents(String qa_re_contents) {
		this.qa_re_contents = qa_re_contents;
	}

	public String getQa_re_date() {
		return qa_re_date;
	}

	public void setQa_re_date(String qa_re_date) {
		this.qa_re_date = qa_re_date;
	}
	
	public int getQa_re_ref() {
		return qa_re_ref;
	}
	
	public void setQa_re_ref(int qa_re_ref) {
		this.qa_re_ref = qa_re_ref;
	}
	
	
	

}
