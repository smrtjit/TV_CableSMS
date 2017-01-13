package com.dialnet.source.service;

import com.dialnet.source.model.LCOUser;


public interface LCOService {
	LCOUser save(LCOUser lco);
	boolean update(int id);
	LCOUser get(String id);
	boolean findByLogin(String userName, String password);
	boolean findByUserName(String userName);
}
