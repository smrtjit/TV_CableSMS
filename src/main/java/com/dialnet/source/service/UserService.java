package com.dialnet.source.service;

import java.util.List;

import com.dialnet.source.model.User;

public interface UserService {
	User save(User student);
	User get(String id);
	List<User> findData();
	boolean findByLogin(String userName, String password);
	boolean findByUserName(String userName);
}
