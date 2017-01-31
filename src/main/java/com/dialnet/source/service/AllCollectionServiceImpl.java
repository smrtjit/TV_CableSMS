package com.dialnet.source.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dialnet.source.dao.AllCollectionDao;
import com.dialnet.source.model.AllCollections;


@Service
@Transactional
public class AllCollectionServiceImpl implements AllCollectionService {

	@Autowired
	AllCollectionDao dao;
	
	@Override
	public List<AllCollections> getAll() {
		return dao.getAll();
	}

	@Override
	public List<AllCollections> getByAnyOne(String sdate, String edate, String VC_no, String mobile, String status,String agent,Integer offset, Integer maxResults) {
	return dao.getByAnyOne(sdate, edate, VC_no, mobile, status,agent, offset,maxResults);
	}

	@Override
	public List<AllCollections> list(Integer offset, Integer maxResults) {

		return dao.list(offset, maxResults);
	}

	@Override
	public Long count() {
		return dao.count();
	}

	@Override
	public Long countForSearch(String sdate, String edate, String VC_no, String mobile, String status, String agent) {
		
		return dao.countForSearch(sdate, edate, VC_no, mobile, status, agent);
	}

}
