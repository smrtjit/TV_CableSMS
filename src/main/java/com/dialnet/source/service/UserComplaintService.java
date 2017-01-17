package com.dialnet.source.service;

import java.util.List;

import com.dialnet.source.model.CustComplaint;


public interface UserComplaintService {
	List<CustComplaint> findByPckCode(String code);
	CustComplaint addComplaint(String userid,String vc_no,String complaint_type,String opening_remarks);
}
