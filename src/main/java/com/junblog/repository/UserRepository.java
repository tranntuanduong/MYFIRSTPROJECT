package com.junblog.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.junblog.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Long>{
	
}
