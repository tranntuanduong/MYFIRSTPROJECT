package com.junblog.service;

import com.junblog.dto.BlogDTO;

public interface IBlogService {
	BlogDTO save(BlogDTO newBlog);
	BlogDTO findById(Long id);
}
