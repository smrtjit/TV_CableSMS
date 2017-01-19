package com.dialnet.source.service;

import java.util.List;

import com.dialnet.source.model.AllComplaints;



public interface AllComplaintService {
	List<AllComplaints> findData();
	
	List<AllComplaints> findById(String code);
	
	void addComplaint(String userid,String vc_no,String complaint_type,String opening_remarks);
	//void addComplaint(String userid,String vc_no,String complaint_type,String opening_remarks);
}
