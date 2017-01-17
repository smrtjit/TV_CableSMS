package com.dialnet.source.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dialnet.source.model.LCOPackages;


@Repository("lcoPackageRepository")
public interface LCOPackageRepository extends JpaRepository<LCOPackages, Long> {
	
	
	@Query("select s from LCOPackages s where s.code = :code")
	LCOPackages findByPckCode(@Param("code") String code);
	
	
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
