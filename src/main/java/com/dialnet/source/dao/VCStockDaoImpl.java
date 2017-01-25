package com.dialnet.source.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dialnet.source.model.VCStock;


@Repository
public class VCStockDaoImpl implements VCStockDao {
	
	@Autowired
	SessionFactory dao;

	@Override
	public List<VCStock> getAllVCStock() {
		System.out.println("Check call getAllVCStock VCStockDaoImpl");
		Session sf=dao.openSession();
		return (List<VCStock>) sf.createCriteria(VCStock.class).list();
	}

	@Override
	public VCStock getByVCNo(String stb) {
		Session sf = dao.openSession();
		Criteria cr = sf.createCriteria(VCStock.class);

		// To get records having salary more than 2000
		cr.add(Restrictions.eq("vc_no", stb));
		VCStock product = (VCStock)cr.uniqueResult();
		//System.out.println("user: " + product);

		return product;
	}

	@Override
	public VCStock getByStatus(String stutus) {
		Session sf = dao.openSession();
		Criteria cr = sf.createCriteria(VCStock.class);

		// To get records having salary more than 2000
		cr.add(Restrictions.eq("current_status", stutus));
		VCStock product = (VCStock)cr.uniqueResult();
		//System.out.println("user: " + product);

		return product;
	}

	@Override
	public int upStatus(String vcn, String status) {
		Session sf = dao.openSession();
		Query query = sf.createSQLQuery("update lco_vc_no set current_status = :docname" + " where vc_no = :docId");
		query.setParameter("docname",status);
		query.setParameter("docId", vcn);
		int result = query.executeUpdate();
		sf.beginTransaction().commit();
		return result;
	}

}
