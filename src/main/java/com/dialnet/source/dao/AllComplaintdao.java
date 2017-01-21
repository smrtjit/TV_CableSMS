package com.dialnet.source.dao;

import java.util.List;

import com.dialnet.source.model.AllComplaints;

public interface AllComplaintdao {
	
	public void add(AllComplaints complaints);
	public void edit(AllComplaints complaints);
	public void delete(int complaints_No);
	public List<AllComplaints> getComplaint(String complaints_No);
	public List<AllComplaints> getAllComplaints();
	
}
