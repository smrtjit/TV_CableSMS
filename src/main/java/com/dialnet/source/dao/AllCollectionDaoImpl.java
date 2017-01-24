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
		System.out.println("sdate: "+sdate+",edate: "+edate+",VC_no: "+VC_no+",mobile: "+mobile+",pckg: "+pckg);
		Session sf=dao.openSession();
		Criteria criteria = sf.createCriteria(AllCollections.class); 
		if(sdate==null || sdate.equalsIgnoreCase("")){
			System.out.println("sdate is not available");
		}
		else{
			criteria.add(Restrictions.gt("trndate",sdate+" 00:00:00"));
		}
		
		if(edate==null || edate.equalsIgnoreCase(""))
			System.out.println("edate is not available");
		else{
			criteria.add(Restrictions.lt("trndate",edate+" 59:59:59"));
		}
		
		if(VC_no==null || VC_no.equalsIgnoreCase(""))
			System.out.println("VC_no is not available");
		else{
			criteria.add(Restrictions.eq("VC_No",VC_no));
		}
		
		if(mobile==null || mobile.equalsIgnoreCase(""))
			System.out.println("mobile is not available");
		else
		criteria.add(Restrictions.eq("cust_mobile",mobile));
		if(pckg==null || pckg.equalsIgnoreCase(""))
			System.out.println("pckg is not available");
		else
		criteria.add(Restrictions.eq("Current_Pckg",pckg));
		
		
		return criteria.list();
		
	}

}
