package com.dialnet.source.service;

import java.util.List;

import com.dialnet.source.model.PackageInfo;

public interface PackageInfoService {


	public PackageInfo getByID(String code);
	public List<PackageInfo> getAll();
}
