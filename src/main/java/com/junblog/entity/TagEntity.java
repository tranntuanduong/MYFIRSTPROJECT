package com.junblog.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table (name = "tags")
public class TagEntity extends BaseEntity{
	@Column (name = "name")
	private String name;
	
	@ManyToMany(mappedBy = "tags")
    private List<BlogEntity> blogs = new ArrayList<>();

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<BlogEntity> getBlogs() {
		return blogs;
	}

	public void setBlogs(List<BlogEntity> blogs) {
		this.blogs = blogs;
	}


	
}
