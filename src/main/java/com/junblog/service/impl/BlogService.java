package com.junblog.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.junblog.converter.BlogConverter;
import com.junblog.dto.BlogDTO;
import com.junblog.entity.BlogEntity;
import com.junblog.repository.IBlogRepository;
import com.junblog.service.IBlogService;

@Service
public class BlogService implements IBlogService{
	
	@Autowired private IBlogRepository blogRepository;
	@Autowired private BlogConverter blogConverter;
	

	@Override
	public BlogDTO findById(Long id) {
		return null;
	}

	@Override
	public BlogDTO save(BlogDTO newBlog) {
		BlogEntity blogEntity = blogConverter.convertToEntity(newBlog);
		//tam thoi chua co phan quyen
		blogEntity.setCreatedBy("duongdeptrai");
		blogEntity.setCreatedDate(new Date());
		//tags
		
		//category
		
		//author -> phan quyen da
		
		blogEntity = blogRepository.save(blogEntity);	
		return blogConverter.convertToDTO(blogEntity);
	}





}
