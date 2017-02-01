package com.dialnet.source.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.dialnet.source.dao.AllComplaintdao;
import com.dialnet.source.model.AllComplaints;

@Service("save")
public class AllComplaintserviceImpl implements AllComplaintService {
	
	@Autowired
	private AllComplaintdao allcomplaintdao;

	@Transactional
	public void add(AllComplaints complaints) {
		allcomplaintdao.add(complaints);
	}

	@Transactional
	public void edit(AllComplaints complaints) {
		allcomplaintdao.edit(complaints);

	}

	@Transactional
	public void delete(int complaints_No) {
		allcomplaintdao.delete(complaints_No);

	}

	

	@Transactional
	public List<AllComplaints> getAllComplaints() {
		
		return allcomplaintdao.getAllComplaints();
	}

	public List<AllComplaints> getComplaint(String complaints_No) {
		return allcomplaintdao.getComplaint(complaints_No);
	}

	@Override
	public List<AllComplaints> getByAnyOne(String sdate, String edate, String VC_no, String mobile, String status) {
		return allcomplaintdao.getByAnyOne(sdate, edate, VC_no, mobile, status);
	}

	@Override
	public List<AllComplaints> list(Integer offset, Integer maxResults) {
		// TODO Auto-generated method stub
		return allcomplaintdao.list(offset, maxResults);
	}

	@Override
	public Long count() {
		// TODO Auto-generated method stub
		return allcomplaintdao.count();
	}

	@Override
	public Long countForSearch(String sdate, String edate, String VC_no, String mobile, String status) {
		// TODO Auto-generated method stub
		return allcomplaintdao.countForSearch(sdate, edate, VC_no, mobile, status);
	}

	@Override
	public List<AllComplaints> listForSearch(String sdate, String edate, String VC_no, String mobile, String status,
			Integer offset, Integer maxResults) {
		// TODO Auto-generated method stub
		return allcomplaintdao.listForSearch(sdate, edate, VC_no, mobile, status, offset, maxResults);
	}

}
