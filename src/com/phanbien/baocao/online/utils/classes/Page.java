package com.phanbien.baocao.online.utils.classes;

public class Page {
	
	public Page() {

	}

	public String getHomepage() {
		return homepage;
	}

	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}

	public String getListtopic() {
		return listtopic;
	}

	public void setListtopic(String listtopic) {
		this.listtopic = listtopic;
	}

	public String getReport() {
		return report;
	}

	public void setReport(String report) {
		this.report = report;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getViewresult() {
		return viewresult;
	}

	public void setViewresult(String viewresult) {
		this.viewresult = viewresult;
	}

	public String getGUIDE() {
		return GUIDE;
	}

	private String homepage;
	private String listtopic;
	private String report;
	private String profile;
	private String viewresult;
	private String GUIDE = "huong-dan.jsp";

}
