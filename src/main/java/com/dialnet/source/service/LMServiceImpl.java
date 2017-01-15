package com.dialnet.source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dialnet.source.model.LMUser;
import com.dialnet.source.repository.LMRepository;


@Service("lmService")
public class LMServiceImpl implements LMService {

	@Autowired
	public LMRepository lmRepository;
	public boolean update(int id) {
		
		return false;
	}
	

	public LMUser get(String id) {
		LMUser stud = lmRepository.findByUserName(id);
		return stud;
	}

	@Transactional
	public LMUser save(LMUser lco) {
		return lmRepository.save(lco);
	}

	public boolean findByLogin(String userName, String password) {	
		LMUser stud = lmRepository.findByUserName(userName);
		if(stud==null)
		{
			return false;	
		}else
		if(stud != null && stud.getPassword().equals(password)) {
			return true;
		} 
		
		return false;		
	}

	public boolean findByUserName(String userName) {
		LMUser stud = lmRepository.findByUserName(userName);
		
		if(stud != null) {
			return true;
		}
		
		return false;
	}
	

}