package com.dialnet.source.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dialnet.source.model.LCOComplaint;
import com.dialnet.source.repository.LCOComplaintRepository;


@Service("LCOComplaintRepository")
public class LCOComplaintServiceImpl implements LCOComplaintService {

	@Autowired
	public LCOComplaintRepository LCOCompRepository;
	

	public List<LCOComplaint> findData() {
		List<LCOComplaint>  stud = LCOCompRepository.findData();
		return stud;
	}


	

//	public void addComplaint(String id, String vcc, String type,String opening_remarks) {
//		lcoRepository.addComplaint(id, vcc, type, opening_remarks);
//	}



	
	
	

}