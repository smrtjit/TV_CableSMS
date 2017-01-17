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

import com.dialnet.source.model.CustComplaint;


@Repository("userComplaintRepository")
public interface UserComplaintRepository extends JpaRepository<CustComplaint, Long> {
	
	
	@Query("select s from CustComplaint s where s.vc_no = :vcno")
	List<CustComplaint> findByPckCode(@Param("vcno") String vcno);
	
	@Modifying
	@Transactional
	@Query(value ="insert into CustComplaint (userid, vc_no,complaint_type,opening_remarks) VALUES (?1, ?2, ?3, ?4)", nativeQuery = true)
	CustComplaint addComplaint(@Param("userid") String id,@Param("vc_no") String vcno,@Param("complaint_type") String type,@Param("opening_remarks") String remark);
	
	/*
	@Modifying
    @Query("UPDATE LCO_User c SET c.address = :address WHERE c.id = :id")
    int updateAddress(@Param("companyId") int companyId);
	
	@Modifying
    @Transactional
    @Query("delete LCOUser u where u.login_id = ?1")
    void deleteUsersByFirstName(String id);
	*/
}
