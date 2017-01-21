package com.dialnet.source.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dialnet.source.model.AllComplaints;
import com.dialnet.source.model.User;

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
		return tmp;
	}

	public List<AllComplaints> getAllComplaints() {
		System.out.println("Call All Complaint \t");
		Session sf = session.openSession();
		return sf.createQuery("from AllComplaints").list();
	}

}
