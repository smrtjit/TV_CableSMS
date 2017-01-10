package com.dialnet.source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dialnet.source.model.User;
import com.dialnet.source.repository.UserRepository;

@Service("studentService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository studentRepository;
	
	@Transactional
	public User save(User student) {
		return studentRepository.save(student);
	}

	public boolean findByLogin(String userName, String password) {	
		User stud = studentRepository.findByUserName(userName);
		
		if(stud != null && stud.getPassword().equals(password)) {
			return true;
		} 
		
		return false;		
	}

	public boolean findByUserName(String userName) {
		User stud = studentRepository.findByUserName(userName);
		
		if(stud != null) {
			return true;
		}
		
		return false;
	}

}
