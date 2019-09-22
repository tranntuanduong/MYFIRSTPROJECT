package com.junblog.converter;

import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Component;

import com.junblog.dto.BlogDTO;
import com.junblog.entity.BlogEntity;

@Component
public class BlogConverter {
	public BlogDTO convertToDTO(BlogEntity userEntity) {
		ModelMapper modelMapper = new ModelMapper();
		BlogDTO result = modelMapper.map(userEntity, BlogDTO.class);
		return result;
	}
	
	public BlogEntity convertToEntity(BlogDTO userDTO) {
		ModelMapper modelMapper = new ModelMapper();
		BlogEntity result = modelMapper.map(userDTO, BlogEntity.class);
	
		return result;
	}
}
