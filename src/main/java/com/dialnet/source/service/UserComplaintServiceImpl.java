package com.dialnet.source.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dialnet.source.model.CustComplaint;
import com.dialnet.source.repository.UserComplaintRepository;


@Service("userComplaintService")
public class UserComplaintServiceImpl implements UserComplaintService {

	@Autowired
	public UserComplaintRepository lcoRepository;
	

	public List<CustComplaint> findByPckCode(String code) {
		List<CustComplaint>  stud = lcoRepository.findByPckCode(code);
		return stud;
	}


	public CustComplaint addComplaint(String id, String vcc, String type,String opening_remarks) {
		CustComplaint lco=lcoRepository.addComplaint(id, vcc, type, opening_remarks);
		return lco;
	}



	
	
	

}