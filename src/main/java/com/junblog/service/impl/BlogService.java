package com.junblog.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.junblog.builder.BlogSearchBuilder;
import com.junblog.converter.BlogConverter;
import com.junblog.dto.BlogDTO;
import com.junblog.entity.BlogEntity;
import com.junblog.entity.CategoryEntity;
import com.junblog.entity.TagEntity;
import com.junblog.output.BlogOutPut;
import com.junblog.repository.BlogRepository;
import com.junblog.repository.CategoryRepository;
import com.junblog.repository.TagRepository;
import com.junblog.service.IBlogService;

@Service
public class BlogService implements IBlogService{
	
	@Autowired private BlogRepository blogRepository;
	@Autowired private BlogConverter blogConverter;
	@Autowired private TagRepository tagRepository;
	@Autowired private CategoryRepository categoryRepository;
	
	@Override
	public BlogDTO findById(Long id) {
		BlogEntity blogEntity = blogRepository.findOne(id);
		return blogConverter.convertToDTO(blogEntity);
	}

	@Override
	public BlogDTO save(BlogDTO newBlog) {
		BlogEntity blogEntity = blogConverter.convertToEntity(newBlog);
		//tam thoi chua co phan quyen
		blogEntity.setCreatedBy("duongdeptrai");
		blogEntity.setCreatedDate(new Date());
		//tags
		List<TagEntity> tags = new ArrayList<>();
		for(Long id : newBlog.getTagIds()) {
			TagEntity tagEntity = tagRepository.findOne(id);
			tags.add(tagEntity);
		}
		blogEntity.setTags(tags);
		//category
		List<CategoryEntity> categorys = new ArrayList<>();
		for(Long id : newBlog.getCategoryIds()) {
			CategoryEntity categoryEntity = categoryRepository.findOne(id);
			categorys.add(categoryEntity);
		}
		blogEntity.setCategorys(categorys);	
		//author -> phan quyen da
		blogEntity = blogRepository.save(blogEntity);	
		return blogConverter.convertToDTO(blogEntity);
	}

	@Override
	public BlogOutPut findAll(BlogSearchBuilder builder, Pageable pageable) {
	
		BlogOutPut blogOutPut = blogRepository.findAll(builder, pageable);
		//reset blog dto
		blogOutPut.getBlogDTOs().clear();
		List<BlogEntity> blogEntities = blogOutPut.getBlogEntitys();
		for(BlogEntity blogEntity : blogEntities) {
			BlogDTO blogDTO = blogConverter.convertToDTO(blogEntity);
			//get category name
			StringBuilder categoryName = getCategoryList(blogEntity);
			blogDTO.setCategoryName(categoryName.toString());
			//get tag name
			StringBuilder tagName = getTagName(blogEntity);
			blogDTO.setTagName(tagName.toString());
			blogOutPut.getBlogDTOs().add(blogDTO);
		}
		blogOutPut.getBlogEntitys().clear();
		return blogOutPut;
	}

	private StringBuilder getCategoryList(BlogEntity blogEntity) {
		StringBuilder categoryName = new StringBuilder();
		for(CategoryEntity category : blogEntity.getCategorys()) {
			if(categoryName.length() > 0) {
				categoryName.append(" ,"+category.getName());
			} else {
				categoryName.append(category.getName());
			}	
		}
		return categoryName;
	}

	private StringBuilder getTagName(BlogEntity blogEntity) {
		StringBuilder tagName = new StringBuilder();
		for(TagEntity tag : blogEntity.getTags()) {
			if(tagName.length() > 0) {
				tagName.append(" ,"+tag.getName());
			} else {
				tagName.append(tag.getName());
			}
		}
		return tagName;
	}


	
}
