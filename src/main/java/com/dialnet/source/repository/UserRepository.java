package com.dialnet.source.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dialnet.source.model.LCOUser;
import com.dialnet.source.model.User;

@Repository("custRepository")
public interface UserRepository extends JpaRepository<User, Long> {
	
	@Query("select s from User s where s.username = :username")
	User findByUserName(@Param("username") String username);
	
	@Query("select s from User s")
	List<User> findData();
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
