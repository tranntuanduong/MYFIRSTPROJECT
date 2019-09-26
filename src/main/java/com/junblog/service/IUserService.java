package com.junblog.service;

import java.util.List;

import com.junblog.dto.UserDTO;

public interface IUserService {
	List<UserDTO> findAll();
}
