package com.dialnet.source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dialnet.source.model.LCOUser;
import com.dialnet.source.repository.LCORepository;


@Service("lcoService")
public class LCOServiceImpl implements LCOService {

	@Autowired
	public LCORepository lcoRepository;
	
	public boolean update(int id) {
		
		return false;
	}
	

	public LCOUser get(String userName) {
		LCOUser stud = lcoRepository.findByUserName(userName);
		return stud;
	}

	@Transactional
	public LCOUser save(LCOUser lco) {
		return lcoRepository.save(lco);
	}

	public boolean findByLogin(String userName, String password) {	
		LCOUser stud = lcoRepository.findByUserName(userName);
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
		LCOUser stud = lcoRepository.findByUserName(userName);
		
		if(stud != null) {
			return true;
		}
		
		return false;
	}

	
	
	

}