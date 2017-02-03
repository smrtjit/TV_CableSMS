package com.dialnet.source.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dialnet.source.model.AgentBillDetails;

@Transactional
@Repository
public class AgentBillDetailsDaoImpl implements AgentBillDetailsDao {
	
	@Autowired
	SessionFactory session;

	@Override
	public int saveDetail(AgentBillDetails obj) {
		//System.out.println("hello call dta: "+obj.getCustId());
		Session sf = session.openSession();
		Transaction tx= sf.beginTransaction();
		sf.save(obj);
		tx.commit();
		sf.close();
		//System.out.println("Save AgentBillDetails done");
		return 1;
	}

}
