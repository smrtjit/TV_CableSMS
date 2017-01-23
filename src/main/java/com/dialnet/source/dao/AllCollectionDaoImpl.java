package com.dialnet.source.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dialnet.source.model.AllCollections;
import com.dialnet.source.model.AllComplaints;


@Repository
public class AllCollectionDaoImpl implements AllCollectionDao {
	
	@Autowired
	SessionFactory dao;

	@Override
	public List<AllCollections> getAll() {
		Session sf=dao.openSession();
		return sf.createCriteria(AllCollections.class).list();
		
	}

}
