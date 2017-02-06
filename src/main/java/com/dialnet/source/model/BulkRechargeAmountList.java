package com.dialnet.source.model;

import java.util.List;

public class BulkRechargeAmountList {

	private List<BulkRechargeAmount> lstUser;

	public BulkRechargeAmountList() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BulkRechargeAmountList(List<BulkRechargeAmount> lstUser) {
		super();
		this.lstUser = lstUser;
	}

	public List<BulkRechargeAmount> getLstUser() {
		return lstUser;
	}

	public void setLstUser(List<BulkRechargeAmount> lstUser) {
		this.lstUser = lstUser;
	}
	
}
