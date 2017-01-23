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
	

}
