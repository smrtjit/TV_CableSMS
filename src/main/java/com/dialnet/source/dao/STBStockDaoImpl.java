package com.dialnet.source.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dialnet.source.model.STBStock;



@Repository
public class STBStockDaoImpl implements STBStockDao {

	@Autowired
	SessionFactory dao;
	
	@Override
	public List<STBStock> getAllVCStock() {
		Session sf=dao.openSession();
		return (List<STBStock>) sf.createCriteria(STBStock.class).list();
	}

	@Override
	public STBStock getBySTBNo(String stb) {
		Session sf = dao.openSession();
		Criteria cr = sf.createCriteria(STBStock.class);

		// To get records having salary more than 2000
		cr.add(Restrictions.eq("stb_box_no", stb));
		STBStock product = (STBStock)cr.uniqueResult();
		//System.out.println("user: " + product);

		return product;
	}

	@Override
	public STBStock getByStatus(String status) {
		Session sf = dao.openSession();
		Criteria cr = sf.createCriteria(STBStock.class);

		// To get records having salary more than 2000
		cr.add(Restrictions.eq("current_status", status));
		STBStock product = (STBStock)cr.uniqueResult();
		//System.out.println("user: " + product);

		return product;
	}

	@Override
	public int upSTB(String stb, String status) {
		Session sf = dao.openSession();
		Query query = sf.createSQLQuery("update lco_stb_box set current_status = :docname" + " where stb_box_no = :docId");
		query.setParameter("docname",status);
		query.setParameter("docId", stb);
		int result = query.executeUpdate();
		sf.beginTransaction().commit();
		return result;
	}

}
