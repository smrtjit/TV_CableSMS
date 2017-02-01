package com.dialnet.source.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.dialnet.source.model.LMUser;




@Transactional
@Repository("lmdao")
public class LMUserDaoImpl implements LMUserDao {

	@Autowired
	private SessionFactory dao;

	@Override
	public void add(LMUser username) {
		Session sf = dao.openSession();
		sf.save(username);

	}

	@Override
	public void edit(LMUser username) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(String username) {
		// TODO Auto-generated method stub

	}

	@Override
	public LMUser get(String username) {
		Session sf = dao.openSession();
		Criteria c2 = sf.createCriteria(LMUser.class);
		c2.add(Restrictions.eq("username", username));
		System.out.println("LMUser Id: " + username);
		LMUser product = (LMUser) c2.uniqueResult();
		// LCOUser product = (LCOUser) sf.get(LMUser.class,
		// Long.parseLong(username));
		System.out.println("LMUser: " + product);
		return product;
	}

	@Override
	public List<LMUser> getAll() {
		System.out.println("Get all old user in daoImpl");
		Session sf = dao.openSession();
		return sf.createCriteria(LMUser.class).list();
	}

	///////////////////////////////////////////////////////// For
	///////////////////////////////////////////////////////// Pagination/////////////////////////////////////////////////////

	public List<LMUser> list(Integer offset, Integer maxResults) {
		Session sf = dao.openSession();
		return sf.createCriteria(LMUser.class).setFirstResult(offset != null ? offset : 0)
				.setMaxResults(maxResults != null ? maxResults : 10).list();
	}

	public Long count() {
		Session sf = dao.openSession();
		return (Long) sf.createCriteria(LMUser.class).setProjection(Projections.rowCount()).uniqueResult();
	}
	
	
	

	
	public List userListForSearch(String empid, String username, String desig,String mobile,
			Integer offset, Integer maxResults) {
		Session sf=dao.openSession();
		Criteria criteria = sf.createCriteria(LMUser.class); 
		
		if(empid==null || empid.equalsIgnoreCase(""))
			System.out.println("id is not available");
		else
			criteria.add(Restrictions.eq("id",empid));
		
		if(mobile==null || mobile.equalsIgnoreCase(""))
			System.out.println("mobile is not available");
		else
		criteria.add(Restrictions.eq("mobile",mobile));
		
		if(username==null || username.equalsIgnoreCase(""))
			System.out.println("username is not available");
		else
		criteria.add(Restrictions.eq("username",username));
		
		if(desig==null || desig.equalsIgnoreCase(""))
			System.out.println("desig is not available");
		else
		criteria.add(Restrictions.eq("designation",desig));
		
		
		return criteria
				.setFirstResult(offset!=null?offset:0)
				.setMaxResults(maxResults!=null?maxResults:10)
				.list();
	}
	
	
	public Long countForSearch(String empid, String username, String desig,String mobile){
		Session sf=dao.openSession();
		Criteria criteria = sf.createCriteria(LMUser.class); 
		
		if(empid==null || empid.equalsIgnoreCase(""))
			System.out.println("id is not available");
		else
			criteria.add(Restrictions.eq("id",empid));
		
		if(mobile==null || mobile.equalsIgnoreCase(""))
			System.out.println("mobile is not available");
		else
		criteria.add(Restrictions.eq("mobile",mobile));
		
		if(username==null || username.equalsIgnoreCase(""))
			System.out.println("username is not available");
		else
		criteria.add(Restrictions.eq("username",username));
		
		if(desig==null || desig.equalsIgnoreCase(""))
			System.out.println("desig is not available");
		else
		criteria.add(Restrictions.eq("designation",desig));
		
		return (Long)criteria
				.setProjection(Projections.rowCount())
				.uniqueResult();
	}

}
