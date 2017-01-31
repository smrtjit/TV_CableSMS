package com.dialnet.source.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dialnet.source.model.AllCollections;



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
	public List<AllCollections> getByAnyOne(String sdate, String edate, String VC_no, String mobile, String status,String agent,Integer offset, Integer maxResults) {
		System.out.println("sdate: "+sdate+",edate: "+edate+",VC_no: "+VC_no+",mobile: "+mobile+",pckg: "+status);
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
			criteria.add(Restrictions.eq("VC_No",VC_no.trim()));
		}
		
		if(mobile==null || mobile.equalsIgnoreCase(""))
			System.out.println("mobile is not available");
		else
		criteria.add(Restrictions.eq("cust_mobile",mobile));
		
		if(status==null || status.equalsIgnoreCase(""))
			System.out.println("pckg is not available");
		else
		criteria.add(Restrictions.eq("Payment_Status",status));
		
		if(agent==null || agent.equalsIgnoreCase(""))
			System.out.println("pckg is not available");
		else
		criteria.add(Restrictions.eq("Collecting_Agent",agent));
		//System.out.println("List size in searching: "+criteria.list().size());
		return criteria.setFirstResult(offset != null ? offset : 0)
				.setMaxResults(maxResults != null ? maxResults : 10).list();
		
	}
	
	
	
	public Long countForSearch(String sdate, String edate, String VC_no, String mobile, String status,String agent) {
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
			criteria.add(Restrictions.eq("VC_No",VC_no.trim()));
		}
		
		if(mobile==null || mobile.equalsIgnoreCase(""))
			System.out.println("mobile is not available");
		else
		criteria.add(Restrictions.eq("cust_mobile",mobile));
		
		if(status==null || status.equalsIgnoreCase(""))
			System.out.println("pckg is not available");
		else
		criteria.add(Restrictions.eq("Payment_Status",status));
		
		if(agent==null || agent.equalsIgnoreCase(""))
			System.out.println("pckg is not available");
		else
		criteria.add(Restrictions.eq("Collecting_Agent",agent));
		return (Long) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	
	////////////////////////////////////////////////////For Pagination//////////////////////////////////////////////////////
	
	public List<AllCollections> list(Integer offset, Integer maxResults) {
		Session sf = dao.openSession();
		return sf.createCriteria(AllCollections.class).setFirstResult(offset != null ? offset : 0)
				.setMaxResults(maxResults != null ? maxResults : 10).list();
	}

	public Long count() {
		Session sf = dao.openSession();
		return (Long) sf.createCriteria(AllCollections.class).setProjection(Projections.rowCount()).uniqueResult();
	}

}
