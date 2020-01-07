package com.junblog.converter;

import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Component;

import com.junblog.dto.BlogDTO;
import com.junblog.entity.BlogEntity;

@Component
public class BlogConverter {
	public BlogDTO convertToDTO(BlogEntity blogEntity) {
		ModelMapper modelMapper = new ModelMapper();
		BlogDTO result = modelMapper.map(blogEntity, BlogDTO.class);
		return result;
	}
	
	public BlogEntity convertToEntity(BlogDTO blogDTO) {
		ModelMapper modelMapper = new ModelMapper();
		BlogEntity result = modelMapper.map(blogDTO, BlogEntity.class);
		return result;
	}
}
