package com.dialnet.source.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dialnet.source.model.AllComplaints;


@Repository("save1")
public class AllComplaintdaoImpl implements AllComplaintdao {

	@Autowired
	private SessionFactory session;

	public void add(AllComplaints complaints) {
		Session sf = session.openSession();
		sf.save(complaints);

	}

	public void edit(AllComplaints complaints) {
		session.getCurrentSession().update(complaints);
	}

	public void delete(int complaints_No) {
		session.getCurrentSession().delete(complaints_No);

	}

	public List<AllComplaints> getComplaint(String complaints_No) {

		System.out.println("complaints_No\t" + complaints_No);
		Session sf = session.openSession();
		Criteria c2 = sf.createCriteria(AllComplaints.class);
		c2.add(Restrictions.eq("customer_vcno", complaints_No));
		//AllComplaints product = (AllComplaints) sf.get(AllComplaints.class, Long.parseLong(complaints_No));
		//System.out.println("customer_vcno: " + product);
		List<AllComplaints> tmp=c2.list();
		System.out.println("customer_vcno: " + tmp);
		return tmp;
	}

	public List<AllComplaints> getAllComplaints() {
		System.out.println("Call All Complaint \t");
		Session sf = session.openSession();
		return sf.createQuery("from AllComplaints").list();
	}
	
	@Override
	public List<AllComplaints> getByAnyOne(String sdate, String edate, String VC_no, String mobile, String status) {
		System.out.println("sdate: "+sdate+",edate: "+edate+",VC_no: "+VC_no+",mobile: "+mobile+",pckg: "+status);
		Session sf=session.openSession();
		Criteria criteria = sf.createCriteria(AllComplaints.class); 
		if(sdate==null || sdate.equalsIgnoreCase("")){
			System.out.println("sdate is not available");
		}
		else{
			criteria.add(Restrictions.gt("open_date",sdate+" 00:00:00"));
		}
		
		if(edate==null || edate.equalsIgnoreCase(""))
			System.out.println("edate is not available");
		else{
			criteria.add(Restrictions.lt("open_date",edate+" 59:59:59"));
		}
		
		if(VC_no==null || VC_no.equalsIgnoreCase(""))
			System.out.println("VC_no is not available");
		else{
			criteria.add(Restrictions.eq("customer_vcno",VC_no));
		}
		
		if(mobile==null || mobile.equalsIgnoreCase(""))
			System.out.println("mobile is not available");
		else
		criteria.add(Restrictions.eq("customer_mobile",mobile));
		if(status==null || status.equalsIgnoreCase(""))
			System.out.println("pckg is not available");
		else
		criteria.add(Restrictions.eq("complaint_status",status));
		
		
		return criteria.list();
		
	}
	
	
	////////////////////////////////////////////////////For Pagination//////////////////////////////////////////////////////
	
	public List<AllComplaints> list(Integer offset, Integer maxResults) {
		Session sf = session.openSession();
		return sf.createCriteria(AllComplaints.class).setFirstResult(offset != null ? offset : 0)
				.setMaxResults(maxResults != null ? maxResults : 10).list();
	}

	public Long count() {
		Session sf = session.openSession();
		return (Long) sf.createCriteria(AllComplaints.class).setProjection(Projections.rowCount()).uniqueResult();
	}
	
	
	public List<AllComplaints> listForSearch(String sdate, String edate, String VC_no, String mobile, String status,Integer offset, Integer maxResults) {
		Session sf=session.openSession();
		Criteria criteria = sf.createCriteria(AllComplaints.class); 
		if(sdate==null || sdate.equalsIgnoreCase("")){
			System.out.println("sdate is not available");
		}
		else{
			criteria.add(Restrictions.gt("open_date",sdate+" 00:00:00"));
		}
		
		if(edate==null || edate.equalsIgnoreCase(""))
			System.out.println("edate is not available");
		else{
			criteria.add(Restrictions.lt("open_date",edate+" 59:59:59"));
		}
		
		if(VC_no==null || VC_no.equalsIgnoreCase(""))
			System.out.println("VC_no is not available");
		else{
			criteria.add(Restrictions.eq("customer_vcno",VC_no));
		}
		
		if(mobile==null || mobile.equalsIgnoreCase(""))
			System.out.println("mobile is not available");
		else
		criteria.add(Restrictions.eq("customer_mobile",mobile));
		if(status==null || status.equalsIgnoreCase(""))
			System.out.println("pckg is not available");
		else
		criteria.add(Restrictions.eq("complaint_status",status));
		
		return criteria.setFirstResult(offset != null ? offset : 0)
				.setMaxResults(maxResults != null ? maxResults : 10).list();
	}

	public Long countForSearch(String sdate, String edate, String VC_no, String mobile, String status) {
		Session sf=session.openSession();
		Criteria criteria = sf.createCriteria(AllComplaints.class); 
		if(sdate==null || sdate.equalsIgnoreCase("")){
			System.out.println("sdate is not available");
		}
		else{
			criteria.add(Restrictions.gt("open_date",sdate+" 00:00:00"));
		}
		
		if(edate==null || edate.equalsIgnoreCase(""))
			System.out.println("edate is not available");
		else{
			criteria.add(Restrictions.lt("open_date",edate+" 59:59:59"));
		}
		
		if(VC_no==null || VC_no.equalsIgnoreCase(""))
			System.out.println("VC_no is not available");
		else{
			criteria.add(Restrictions.eq("customer_vcno",VC_no));
		}
		
		if(mobile==null || mobile.equalsIgnoreCase(""))
			System.out.println("mobile is not available");
		else
		criteria.add(Restrictions.eq("customer_mobile",mobile));
		if(status==null || status.equalsIgnoreCase(""))
			System.out.println("pckg is not available");
		else
		criteria.add(Restrictions.eq("complaint_status",status));
		return (Long)criteria.setProjection(Projections.rowCount()).uniqueResult();
	}

}
