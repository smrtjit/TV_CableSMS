package com.dialnet.source.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dialnet.source.model.AllComplaints;
import com.dialnet.source.repository.AllComplaintRepository;


@Service("allComplaintRepository")
public class AllComplaintServiceImpl implements AllComplaintService {

	@Autowired
	public AllComplaintRepository lcoCompRepository;
	

	public List<AllComplaints> findData() {
		List<AllComplaints>  stud = lcoCompRepository.findData();
		return stud;
	}


	public List<AllComplaints> findById(String code) {
		List<AllComplaints>  stud = lcoCompRepository.findByPckCode(code);
		return stud;
	}

	public void addComplaint(String id, String vcc, String type,String opening_remarks) {
		lcoCompRepository.addComplaint(id, vcc, type, opening_remarks);
		//return lco;
	}
	

//	public void addComplaint(String id, String vcc, String type,String opening_remarks) {
//		lcoRepository.addComplaint(id, vcc, type, opening_remarks);
//	}



	
	
	

}