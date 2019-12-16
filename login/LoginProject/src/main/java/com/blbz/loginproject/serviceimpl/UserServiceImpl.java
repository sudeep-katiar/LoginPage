package com.blbz.loginproject.serviceimpl;

import java.sql.SQLException;

import com.blbz.loginproject.repository.UserRepository;
import com.blbz.loginproject.service.UserService;

public class UserServiceImpl implements UserService {

	public boolean authentication(String username, String pswd) throws ClassNotFoundException, SQLException {
		return UserRepository.authentication(username,pswd);
	}

}
