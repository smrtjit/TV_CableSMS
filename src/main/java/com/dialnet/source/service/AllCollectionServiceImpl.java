package com.dialnet.source.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dialnet.source.model.AllCollections;
import com.dialnet.source.repository.AllCollectionRepository;


@Service("allCollectionsRepository")
public class AllCollectionServiceImpl implements AllCollectionService {

	@Autowired
	public AllCollectionRepository lcoCompRepository;
	

	public List<AllCollections> findData() {
		List<AllCollections>  stud = lcoCompRepository.findData();
		return stud;
	}


	public List<AllCollections> findByLMId(String code) {
		List<AllCollections>  stud = lcoCompRepository.findByPckCode(code);
		return stud;
	}



//	public void addComplaint(String id, String vcc, String type,String opening_remarks) {
//		lcoRepository.addComplaint(id, vcc, type, opening_remarks);
//	}



	
	
	

}