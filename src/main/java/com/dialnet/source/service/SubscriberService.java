package com.dialnet.source.service;

import java.util.List;

import com.dialnet.source.model.User;

public interface SubscriberService {

	public void add(User complaints);
	public void edit(User complaints);
	public void delete(int complaints_No);
	public User  get(String complaints_No);
	public boolean findByLogin(String id,String pwd);
	public List getAll();
	public User findByVCNO(String vcno);
}