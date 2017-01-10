package com.dialnet.source.service;

import com.dialnet.source.model.User;

public interface UserService {
	User save(User student);
	boolean findByLogin(String userName, String password);
	boolean findByUserName(String userName);
}
