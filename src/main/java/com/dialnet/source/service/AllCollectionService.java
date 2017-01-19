package com.dialnet.source.service;

import java.util.List;

import com.dialnet.source.model.AllCollections;



public interface AllCollectionService {
	List<AllCollections> findData();
	
	List<AllCollections> findByLMId(String code);
	
	
}
