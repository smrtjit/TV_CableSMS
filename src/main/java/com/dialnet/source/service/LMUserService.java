package com.dialnet.source.service;

import java.util.List;

import com.dialnet.source.model.LMUser;

public interface LMUserService {

	public void add(LMUser username);
	public void edit(LMUser username);
	public void delete(String username);
	public LMUser get(String username);
	public List<LMUser> getAll();
	public boolean findByLogin(String id,String pwd);
}
