package com.dialnet.source.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dialnet.source.model.LCOUserRegistration;
import com.dialnet.source.repository.LCOUserRegistrationRepository;


@Service("lcoUserRegService")
public class LCOUserRegistrationImpl implements LCOUserRegistrationService {

	@Autowired
	public LCOUserRegistrationRepository lcoRepository;
	

	public List<LCOUserRegistration> findData() {
		 List<LCOUserRegistration> stud = lcoRepository.findData();
		return stud;
	}



	
	
	

}