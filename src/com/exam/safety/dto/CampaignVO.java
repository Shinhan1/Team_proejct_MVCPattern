package com.exam.safety.dto;

public class CampaignVO {
	private int bno;
	private String camimg;
	private String camlink;
	private String camtitle;
	private String camcontents;




	public CampaignVO() {}


	public CampaignVO(int bno, String camimg, String camlink, String camtitle, String camcontents) {
		super();
		this.bno = bno;
		this.camimg = camimg;
		this.camlink = camlink;
		this.camtitle = camtitle;
		this.camcontents = camcontents;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getCamimg() {
		return camimg;
	}
	public void setCamimg(String camimg) {
		this.camimg = camimg;
	}
	public String getCamlink() {
		return camlink;
	}
	public void setCamlink(String camlink) {
		this.camlink = camlink;
	}
	public String getCamtitle() {
		return camtitle;
	}
	public void setCamtitle(String camtitle) {
		this.camtitle = camtitle;
	}
	public String getCamcontents() {
		return camcontents;
	}
	public void setCamcontents(String camcontents) {
		this.camcontents = camcontents;
	}

}
