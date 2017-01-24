package com.dialnet.source.service;

import java.util.List;

import com.dialnet.source.model.AllComplaints;

public interface AllComplaintService {

	public void add(AllComplaints complaints);
	public void edit(AllComplaints complaints);
	public void delete(int complaints_No);
	public List<AllComplaints>  getComplaint(String complaints_No);
	public List<AllComplaints> getAllComplaints();
	public List<AllComplaints> getByAnyOne(String sdate,String edate,String VC_no,String mobile,String status); 
}
