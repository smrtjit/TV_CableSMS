package com.dialnet.source.dao;

import java.util.List;

import com.dialnet.source.model.AllCollections;

public interface AllCollectionDao {
	
	public List<AllCollections> getAll();
	
	public List<AllCollections> getByAnyOne(String sdate,String edate,String VC_no,String mobile,String pckg); 

}
