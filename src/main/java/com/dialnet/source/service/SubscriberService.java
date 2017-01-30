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
	public List<User> findByAnyone(String sdate,String edate,String stb_no,String VC_no,String mobile,String status,String pckg);
	public List<User> findUserForBillGeneration();
	public boolean updateBillStatus(String user);
	
	/////////////////For Pagination/////////////////////////
	
public List<User> list(Integer offset, Integer maxResults);
	
	public Long count();
	
	
public List<User> listForBill(Integer offset, Integer maxResults);
	
	public Long countForBill();
}
