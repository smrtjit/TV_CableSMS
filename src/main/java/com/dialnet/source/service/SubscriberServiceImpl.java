package com.dialnet.source.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dialnet.source.dao.SubsriberDao;
import com.dialnet.source.model.User;
@Service

public class SubscriberServiceImpl implements SubscriberService {

	@Autowired
	private SubsriberDao subsriberdao;

	public void add(User complaints) {
		subsriberdao.add(complaints);
		
	}

	public void edit(User complaints) {
		subsriberdao.edit(complaints);
		
	}

	public void delete(int complaints_No) {
		subsriberdao.delete(complaints_No);
		
	}

	public User get(String complaints_No) {
		
		return subsriberdao.get(complaints_No);
	}

	public List getAll() {
		// TODO Auto-generated method stub
		return subsriberdao.getAll();
	}

	public boolean findByLogin(String userName, String password) {	
		System.out.println("Username\t"+userName +"\tPassword\t"+password);
		User stud = subsriberdao.get(userName);
		System.out.println("Username\t"+stud.getUsername() +"\tPassword\t"+stud.getPassword());
		if(stud==null){
			return false;	
		}
		else if(stud != null && stud.getPassword().equals(password)) {
			return true;
		} else
			return false;	
	}

	public User findByVCNO(String vcno) {
		
		User stud = subsriberdao.findByVCNO(vcno);
		return stud;	
	}

	@Override
	public List<User> findByAnyone(String sdate, String edate, String stb_no, String VC_no, String mobile,
			String status, String pckg) {
		return subsriberdao.findByAnyone(sdate, edate, stb_no, VC_no, mobile, status, pckg);
	}

	@Override
	public List<User> findUserForBillGeneration() {
		return subsriberdao.findUserForBillGeneration();
	}

	@Override
	public boolean updateBillStatus(String user) {
		return subsriberdao.updateBillStatus(user);
	}

	@Override
	public List<User> list(Integer offset, Integer maxResults) {
		
		return subsriberdao.list(offset, maxResults);
	}

	@Override
	public Long count() {
		
		return subsriberdao.count();
	}

	@Override
	public List<User> listForBill(Integer offset, Integer maxResults) {
		// TODO Auto-generated method stub
		return subsriberdao.listForBill(offset, maxResults);
	}

	@Override
	public Long countForBill() {
		// TODO Auto-generated method stub
		return subsriberdao.countForBill();
	}

	@Override
	public List userListForSearch(String sdate, String edate, String stb_no, String VC_no, String mobile, String status,
			String pckg, Integer offset, Integer maxResults) {
		// TODO Auto-generated method stub
		return subsriberdao.userListForSearch(sdate, edate, stb_no, VC_no, mobile, status, pckg, offset, maxResults);
	}

	@Override
	public Long countForSearch(String sdate, String edate, String stb_no, String VC_no, String mobile, String status,
			String pckg) {
		// TODO Auto-generated method stub
		return subsriberdao.countForSearch(sdate, edate, stb_no, VC_no, mobile, status, pckg);
	}

	@Override
	public User findByMobile(String vcno) {
		// TODO Auto-generated method stub
		return subsriberdao.findByMobile(vcno);
	}
	

}
