package com.dialnet.source.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dialnet.source.model.LMUser;


@Repository("lmRepository")
public interface LMRepository extends JpaRepository<LMUser, Long> {
	
	
	@Query("select s from LMUser s where s.username = :userName")
	LMUser findByUserName(@Param("userName") String userName);
	
	/*
	@Modifying
    @Query("UPDATE LCO_User c SET c.address = :address WHERE c.id = :id")
    int updateAddress(@Param("companyId") int companyId);
	
	@Modifying
    @Transactional
    @Query("delete LCO_User User u where u.id = ?1")
    void deleteUsersByFirstName(String id);
    */
}
