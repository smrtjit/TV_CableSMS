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

}
