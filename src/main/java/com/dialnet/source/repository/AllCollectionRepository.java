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

import com.dialnet.source.model.AllCollections;



@Repository("AllCollectionRepository")
public interface AllCollectionRepository extends JpaRepository<AllCollections, Long> {
	
	
	@Query("select s from AllCollections s")
	List<AllCollections> findData();
	
	@Query("select s from AllCollections s where s.LM_Id = :LM_Id")
	List<AllCollections> findByPckCode(@Param("LM_Id") String LM_Id);
	
	
}
