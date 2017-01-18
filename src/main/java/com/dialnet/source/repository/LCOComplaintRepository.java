package com.dialnet.source.repository;

import java.util.List;

import org.hibernate.annotations.NamedQuery;
import org.hibernate.annotations.SQLInsert;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dialnet.source.model.LCOComplaint;


@Repository("LCOComplaintRepository")
public interface LCOComplaintRepository extends JpaRepository<LCOComplaint, Long> {
	
	
	@Query("select s from LCOComplaint s")
	List<LCOComplaint> findData();
	

}
