package com.dialnet.source.dao;

import java.util.List;

import com.dialnet.source.model.STBStock;

public interface STBStockDao {

	
	public List<STBStock> getAllVCStock();
	
	public STBStock getBySTBNo(String stb);
	
	public STBStock getByStatus(String stutus);
	
	public int upSTB(String stb,String status);
}
