package com.junblog.dto;

import java.util.Date;

public class AbstracDTO {
	private Long id;
	private Date createdDate; 
	private Date modifiedDate;
	private String createdBy; 
	private String modifiedBy;
	private String action;
	
	public Long getId() {
		return id;
	}
	
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getModifiedBy() {
		return modifiedBy;
	}
	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	public String getAction() {
		return action;
	}
	
	
}
