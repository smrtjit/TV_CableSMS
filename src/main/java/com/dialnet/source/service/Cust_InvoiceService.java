package com.dialnet.source.service;

import java.util.List;

import com.dialnet.source.model.Cust_Invoice;

public interface Cust_InvoiceService {

	public List<Cust_Invoice> getAll();
	
	public List<Cust_Invoice> getByAnyOne(String Invoice_no,String billing_date, String last_date);
	
	public boolean save(Cust_Invoice cust);
	
}