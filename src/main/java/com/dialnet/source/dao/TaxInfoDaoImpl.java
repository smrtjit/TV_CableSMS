package com.dialnet.source.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dialnet.source.model.TaxInformation;



@Repository
public class TaxInfoDaoImpl implements TaxInfoDao {
	
	@Autowired
	SessionFactory dao;

	@Override
	public TaxInformation getInfo() {
		Session sf = dao.openSession();
		Criteria cr = sf.createCriteria(TaxInformation.class);

		// To get records having salary more than 2000
		cr.add(Restrictions.eq("id", 1));
		TaxInformation product = (TaxInformation)cr.uniqueResult();
		//System.out.println("user: " + product);

		return product;
	}

	
}
