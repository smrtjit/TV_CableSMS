package com.dialnet.source.service;

import java.util.List;

import com.dialnet.source.model.AllCollections;

public interface AllCollectionService {

	
	public List<AllCollections> getAll();
	
	public List<AllCollections> getByAnyOne(String sdate,String edate,String VC_no,String mobile,String pckg); 
	
}
