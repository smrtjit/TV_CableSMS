package com.dialnet.source.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
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

	@Override
	public List<AllCollections> getByAnyOne(String sdate, String edate, String VC_no, String mobile, String pckg) {
		Session sf=dao.openSession();
		Criteria criteria = sf.createCriteria(AllCollections.class); 
		
		return criteria.add(Restrictions.disjunction()
			      .add(Restrictions.gt("trndate", sdate))
			      .add(Restrictions.lt("trndate", edate)) 
			      .add(Restrictions.eq("VC_No", VC_no)) 
			      .add(Restrictions.eq("cust_mobile", mobile))
			      .add(Restrictions.eq("Current_Pckg", pckg))).list();
		
	}

}
