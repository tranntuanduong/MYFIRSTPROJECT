package com.junblog.dto;

import java.util.List;

public class BlogDTO extends AbstracDTO<BlogDTO> {
	private String name;
	private String shortDescription;
	private String image;
	private String content;
	//chua xac dinh dc cai nay de lam gi
	private String tag;
	private String category;
	//end
	private Long[] categoryIds;
	private Long[] tagIds;
	private String categoryId;
	private String tagId;
	private String authorId;
	private String categoryName;
	private String authorName;
	private String tagName;
	private Long views;
	private String slider;
	
	private List<CategoryDTO> categorys;
	private List<TagDTO> tags;

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
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Long[] getCategoryIds() {
		return categoryIds;
	}
	public void setCategoryIds(Long[] categoryIds) {
		this.categoryIds = categoryIds;
	}
	public Long[] getTagIds() {
		return tagIds;
	}
	public void setTagIds(Long[] tagIds) {
		this.tagIds = tagIds;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	
	public String getAuthorId() {
		return authorId;
	}
	public void setAuthorId(String authorId) {
		this.authorId = authorId;
	}
	public String getTagId() {
		return tagId;
	}
	public void setTagId(String tagId) {
		this.tagId = tagId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	public String getTagName() {
		return tagName;
	}
	public void setTagName(String tagName) {
		this.tagName = tagName;
	}
	public List<CategoryDTO> getCategorys() {
		return categorys;
	}
	public void setCategorys(List<CategoryDTO> categorys) {
		this.categorys = categorys;
	}
	public List<TagDTO> getTags() {
		return tags;
	}
	public void setTags(List<TagDTO> tags) {
		this.tags = tags;
	}
	public Long getViews() {
		return views;
	}
	public void setViews(Long views) {
		this.views = views;
	}
	public String getSlider() {
		return slider;
	}
	public void setSlider(String slider) {
		this.slider = slider;
	}

		
	
}
