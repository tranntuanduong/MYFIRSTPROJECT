package com.junblog.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table (name = "user")

public class UserEntity extends BaseEntity{
	@Column (name = "username")
	private String userName;
	
	@Column (name = "password")
	private String password;

	@Column (name = "fullname")
	private String fullName;
	
	@Column (name = "status")
	private Integer status; 
 
	@ManyToMany(mappedBy = "users")
    private List<RoleEntity> roles = new ArrayList<>();
	
	@OneToMany(mappedBy = "author", cascade = {CascadeType.PERSIST,CascadeType.MERGE})
	private List<BlogEntity> blogs = new ArrayList<>();

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public List<RoleEntity> getRoles() {
		return roles;
	}

	public void setRoles(List<RoleEntity> roles) {
		this.roles = roles;
	}

	public List<BlogEntity> getBlogs() {
		return blogs;
	}

	public void setBlogs(List<BlogEntity> blogs) {
		this.blogs = blogs;
	}
}
