package com.dialnet.source.dao;

import java.util.Calendar;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.dialnet.source.model.Customer_Invoice1;



@Repository
public class CustomerInvoiceDaoImpl implements CustomerInvoiceDao {
	
	@Autowired
	SessionFactory dao;
	
	
	@Override
	public boolean save(Customer_Invoice1 cust) {
		Session sf = dao.openSession();
		Transaction tx = sf.beginTransaction();
		sf.save(cust);
		tx.commit();
		return true;
	}

	@Override
	public List<Customer_Invoice1> getByStatus(String status) {
		Session sf = dao.openSession();
		Criteria cr = sf.createCriteria(Customer_Invoice1.class);

		// To get records having salary more than 2000
		cr.add(Restrictions.eq("bill_status", status));
		return cr.list();
	}

	@Override
	public Customer_Invoice1 getByInvoiceId(String id) {
		Session sf = dao.openSession();
		Criteria cr = sf.createCriteria(Customer_Invoice1.class);

		// To get records having salary more than 2000
		cr.add(Restrictions.eq("Invoice_No", id));
		return (Customer_Invoice1)cr.uniqueResult();
	}

	@Override
	public Double getSumOfPaidAmt(String custId) {
		Session sf = dao.openSession();
		Criteria cr = sf.createCriteria(Customer_Invoice1.class);
		cr.add(Restrictions.eq("User_Id", custId));
		cr.setProjection(Projections.sum("Billing_Date"));
		Double sum = (Double)cr.uniqueResult();
		return sum;
	}

	@Override
	public Double getTotalPaidAmt(String custId) {
		Session sf = dao.openSession();
		Criteria cr = sf.createCriteria(Customer_Invoice1.class);
		cr.add(Restrictions.eq("User_Id", custId));
		cr.setProjection(Projections.sum("Paid_Amt"));
		Double sum = (Double)cr.uniqueResult();
		return sum;
	}

	@Override
	public Customer_Invoice1 getLastPaymentDetail(String custId) {
		Session sf = dao.openSession();
		Criteria c = sf.createCriteria(Customer_Invoice1.class);
		c.add(Restrictions.eq("User_Id", custId));
		c.addOrder(Order.asc("Billing_Date"));
		return (Customer_Invoice1)c.uniqueResult();
		
	}

	public List<Customer_Invoice1> list(String user,Integer offset, Integer maxResults) {
		Session sf = dao.openSession();
		Criteria c = sf.createCriteria(Customer_Invoice1.class);
		c.add(Restrictions.eq("lco_id", user));
		return c.setFirstResult(offset != null ? offset : 0)
				.setMaxResults(maxResults != null ? maxResults : 10).list();
	}
	
	public Long count(String user) {
		Session sf = dao.openSession();
		Criteria c = sf.createCriteria(Customer_Invoice1.class);
		c.add(Restrictions.eq("lco_id", user));
		return (Long) c.setProjection(Projections.rowCount()).uniqueResult();
	}

}
