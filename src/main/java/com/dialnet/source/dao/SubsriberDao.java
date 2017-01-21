package com.dialnet.source.dao;

import java.util.List;

import com.dialnet.source.model.User;

public interface SubsriberDao {
	
	public void add(User complaints);
	public void edit(User complaints);
	public void delete(int complaints_No);
	public User get(String username);
	public List getAll();
	public User findByVCNO(String vcno);
	
}