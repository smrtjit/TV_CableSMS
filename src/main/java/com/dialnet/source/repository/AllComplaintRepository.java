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

import com.dialnet.source.model.AllComplaints;



@Repository("AllCompRepository")
public interface AllComplaintRepository extends JpaRepository<AllComplaints, Long> {
	
	
	@Query("select s from AllComplaints s")
	List<AllComplaints> findData();
	
	@Query("select s from AllComplaints s where s.customer_vcno = :customer_vcno")
	List<AllComplaints> findByPckCode(@Param("customer_vcno") String customer_vcno);
	
	//@Modifying
		@Transactional
		@Query(value ="insert into CustComplaint (userid, vc_no,complaint_type,opening_remarks) VALUES (?, ?, ?, ?)", nativeQuery = true)
		//CustComplaint addComplaint(@Param("userid") String id,@Param("vc_no") String vcno,@Param("complaint_type") String type,@Param("opening_remarks") String remark);
		void addComplaint(String id, String vcno, String type, String remark);
}
