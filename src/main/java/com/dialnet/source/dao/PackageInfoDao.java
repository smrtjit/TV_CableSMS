package com.dialnet.source.dao;

import java.util.List;

import com.dialnet.source.model.PackageInfo;

public interface PackageInfoDao {

	
	public PackageInfo getByID(String code);
	public List<PackageInfo> getAll();
	
}
