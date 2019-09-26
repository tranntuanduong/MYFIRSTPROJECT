package com.junblog.service;

import org.springframework.data.domain.Pageable;

import com.junblog.builder.BlogSearchBuilder;
import com.junblog.dto.BlogDTO;
import com.junblog.output.BlogOutPut;

public interface IBlogService {
	BlogDTO save(BlogDTO newBlog);
	BlogDTO findById(Long id);
	BlogOutPut findAll(BlogSearchBuilder builder, Pageable pageable);
	
}
