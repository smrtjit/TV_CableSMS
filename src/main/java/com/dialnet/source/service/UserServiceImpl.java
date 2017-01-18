package com.dialnet.source.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dialnet.source.model.User;
import com.dialnet.source.repository.UserRepository;

@Service("custService")
public class UserServiceImpl implements UserService {

	@Autowired
	public UserRepository custRepository;
	
	@Transactional
	public User save(User student) {
		return custRepository.save(student);
	}

	public boolean findByLogin(String userName, String password) {	
		User stud = custRepository.findByUserName(userName);
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
		User stud = custRepository.findByUserName(userName);
		
		if(stud != null) {
			return true;
		}
		
		return false;
	}

	public User get(String userName) {
		User stud = custRepository.findByUserName(userName);
		
		if(stud != null) {
			return stud;
		}
		return null;
	}

	public List<User> findData() {
		List<User> stud = custRepository.findData();
		return stud;
	}
}
