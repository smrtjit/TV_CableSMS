package com.dialnet.source.model;

import java.util.List;

public class BulkRechargeAmountList {

	private List<BulkRechargeAmount> bulkInfo;

	public BulkRechargeAmountList() {
		super();
		// TODO Auto-generated constructor stub
	}

	public List<BulkRechargeAmount> getBulkInfo() {
		return bulkInfo;
	}

	public void setBulkInfo(List<BulkRechargeAmount> bulkInfo) {
		this.bulkInfo = bulkInfo;
	}

	public BulkRechargeAmountList(List<BulkRechargeAmount> bulkInfo) {
		super();
		this.bulkInfo = bulkInfo;
	}

	
	
}
