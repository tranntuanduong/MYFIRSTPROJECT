package com.junblog.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "blogs")
public class BlogEntity extends BaseEntity{
	@Column (name = "name")
	private String name;
	
	@Column (name = "shortdescription")
	private String shortDescription;
	
	@Column (name = "image")
	private String image;
	
	@Column (name = "content")
	private String content;
	
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "blog_category",
	    joinColumns = @JoinColumn(name = "blogid"),
	    inverseJoinColumns = @JoinColumn(name = "categoryid")
	)	
	private List<CategoryEntity> categorys = new ArrayList<>();
	
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "blog_tag",
	    joinColumns = @JoinColumn(name = "blogid"),
	    inverseJoinColumns = @JoinColumn(name = "tagid")
	)	
	private List<TagEntity> tags = new ArrayList<>();
   
	
	@ManyToOne
	@JoinColumn(name = "authorid")
	private UserEntity author;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public List<CategoryEntity> getCategorys() {
		return categorys;
	}

	public void setCategorys(List<CategoryEntity> categorys) {
		this.categorys = categorys;
	}

	public List<TagEntity> getTags() {
		return tags;
	}

	public void setTags(List<TagEntity> tags) {
		this.tags = tags;
	}
	
	
	
}
