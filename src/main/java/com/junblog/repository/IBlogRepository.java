package com.junblog.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.junblog.entity.BlogEntity;

public interface IBlogRepository extends JpaRepository<BlogEntity, Long>{
	
}
