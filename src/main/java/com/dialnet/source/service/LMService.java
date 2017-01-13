package com.dialnet.source.service;

import com.dialnet.source.model.LMUser;


public interface LMService {
	LMUser save(LMUser lco);
	boolean update(int id);
	LMUser get(String id);
	boolean findByLogin(String userName, String password);
	boolean findByUserName(String userName);
}
