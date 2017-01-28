package com.dialnet.source.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dialnet.source.model.AllCollections;
import com.dialnet.source.model.Cust_Invoice;



@Repository
public class Cust_InvoiceDaoImpl implements Cust_InvoiceDao {

	@Autowired
	SessionFactory dao;
	
	@Override
	public List<Cust_Invoice> getAll() {
		Session sf=dao.openSession();
		return sf.createCriteria(Cust_Invoice.class).list();
	}

	@Override
	public List<Cust_Invoice> getByAnyOne(String Invoice_no,String billing_date, String last_date) {
		Session sf=dao.openSession();
		Criteria criteria = sf.createCriteria(AllCollections.class); 
		
		if(Invoice_no==null || Invoice_no.equalsIgnoreCase(""))
			System.out.println("VC_no is not available");
		else{
			criteria.add(Restrictions.eq("Invoice_no",Invoice_no.trim()));
		}
		
		if(last_date==null || last_date.equalsIgnoreCase("")){
			System.out.println("sdate is not available");
		}
		else{
			criteria.add(Restrictions.gt("last_date",last_date+" 00:00:00"));
		}
		
		if(billing_date==null || billing_date.equalsIgnoreCase(""))
			System.out.println("edate is not available");
		else{
			criteria.add(Restrictions.lt("billing_date",billing_date+" 59:59:59"));
		}
		
		return criteria.list();
		
	}

	@Override
	public boolean save(Cust_Invoice cust) {
		Session sf=dao.openSession();
		Transaction tx=sf.beginTransaction();
		sf.save(cust);
		tx.commit();
		return true;
	}

	@Override
	public List<Cust_Invoice> getBillList() {
		Session sf = dao.openSession();
		Criteria cr = sf.createCriteria(Cust_Invoice.class);

		cr.add(Restrictions.eq("bill_status", "Not Paid"));
		return cr.list();
	}

	@Override
	public Cust_Invoice getByInvoice(String id) {
		Session sf = dao.openSession();
		Criteria cr = sf.createCriteria(Cust_Invoice.class);

		cr.add(Restrictions.eq("Invoice_No", id));
		return (Cust_Invoice)cr.uniqueResult();
	}

	

}
