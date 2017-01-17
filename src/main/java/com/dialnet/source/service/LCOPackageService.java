package com.dialnet.source.service;

import com.dialnet.source.model.LCOPackages;


public interface LCOPackageService {
	LCOPackages findByPckCode(String code);
}
