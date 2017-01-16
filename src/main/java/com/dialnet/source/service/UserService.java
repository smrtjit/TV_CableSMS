package com.dialnet.source.service;

import com.dialnet.source.model.User;

public interface UserService {
	User save(User student);
	User get(String id);
	boolean findByLogin(String userName, String password);
	boolean findByUserName(String userName);
}
