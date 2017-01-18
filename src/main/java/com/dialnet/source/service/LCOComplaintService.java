package com.dialnet.source.service;

import java.util.List;

import com.dialnet.source.model.LCOComplaint;


public interface LCOComplaintService {
	List<LCOComplaint> findData();
	//void addComplaint(String userid,String vc_no,String complaint_type,String opening_remarks);
}
