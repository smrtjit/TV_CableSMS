package com.dialnet.source.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dialnet.source.dao.LMUserDao;
import com.dialnet.source.model.LMUser;

@Service("LMservice")
public class LMUserServiceImpl implements LMUserService {

	@Autowired
	LMUserDao dao; 
	
	@Override
	public void add(LMUser username) {
		dao.add(username);

	}

	@Override
	public void edit(LMUser username) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(String username) {
		// TODO Auto-generated method stub

	}

	@Override
	public LMUser get(String username) {
		return dao.get(username);
	}

	@Override
	public List<LMUser> getAll() {
		return dao.getAll();
	}

	@Override
	public boolean findByLogin(String id, String pwd) {
		System.out.println("Username\t"+id +"\tPassword\t"+pwd);
		LMUser stud = dao.get(id);
		if(stud==null){
			return false;	
		}
		else if(stud != null && stud.getPassword().equals(pwd)) {
			return true;
		} else
			return false;	
	}

}
