package com.dialnet.source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dialnet.source.model.LCOPackages;
import com.dialnet.source.repository.LCOPackageRepository;


@Service("lcoPackageService")
public class LCOPackageServiceImpl implements LCOPackageService {

	@Autowired
	public LCOPackageRepository lcoRepository;
	

	public LCOPackages findByPckCode(String code) {
		LCOPackages stud = lcoRepository.findByPckCode(code);
		return stud;
	}



	
	
	

}