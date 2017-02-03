package com.dialnet.source.dao;

import java.util.List;

import com.dialnet.source.model.AllCollections;


public interface AllCollectionDao {
	
	public int saveDetail(AllCollections obj);

	public List<AllCollections> getAll();

	public List<AllCollections> getByAnyOne(String sdate, String edate, String VC_no, String mobile, String status,String agent,Integer offset, Integer maxResults);
	public Long countForSearch(String sdate, String edate, String VC_no, String mobile, String status,String agent);

	public List<AllCollections> list(Integer offset, Integer maxResults);

	public Long count();
}
