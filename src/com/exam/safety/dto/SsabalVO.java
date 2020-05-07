package com.exam.safety.dto;

public class SsabalVO {
	  private String onenumber;
	  private String accounts;
	  private String ids;
	  private int donation;
	  private String mof;
	  private String attrs;
	  private String names;
	  
	  
	public SsabalVO() {
		super();
	}


	public SsabalVO(String onenumber, String accounts, String ids, int donation, String mof, String attrs,
			String names) {
		super();
		this.onenumber = onenumber;
		this.accounts = accounts;
		this.ids = ids;
		this.donation = donation;
		this.mof = mof;
		this.attrs = attrs;
		this.names = names;
	}


	public String getOnenumber() {
		return onenumber;
	}


	public void setOnenumber(String onenumber) {
		this.onenumber = onenumber;
	}


	public String getAccounts() {
		return accounts;
	}


	public void setAccounts(String accounts) {
		this.accounts = accounts;
	}


	public String getIds() {
		return ids;
	}


	public void setIds(String ids) {
		this.ids = ids;
	}


	public int getDonation() {
		return donation;
	}


	public void setDonation(int donation) {
		this.donation = donation;
	}


	public String getMof() {
		return mof;
	}


	public void setMof(String mof) {
		this.mof = mof;
	}


	public String getAttrs() {
		return attrs;
	}


	public void setAttrs(String attrs) {
		this.attrs = attrs;
	}


	public String getNames() {
		return names;
	}


	public void setNames(String names) {
		this.names = names;
	}
	  
	  
	
	
	
	  
}	//vo end
