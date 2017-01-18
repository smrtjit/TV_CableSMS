package com.dialnet.source.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.dialnet.source.model.LCOUserRegistration;
import com.dialnet.source.model.User;

@Repository("lcoUserRegistrationService")
public interface LCOUserRegistrationRepository extends JpaRepository<LCOUserRegistration, Long> {
	
	
	@Query("select s from LCOUserRegistration s")
	List<LCOUserRegistration> findData();
	
	
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
