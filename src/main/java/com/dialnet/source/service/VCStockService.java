package com.dialnet.source.service;

import java.util.List;

import com.dialnet.source.model.VCStock;

public interface VCStockService {

	
public List<VCStock> getAllVCStock();
	
	public VCStock getByVCNo(String stb);
	
	public VCStock getByStatus(String stutus);
	public int upStatus(String vcn,String status);
	
}
