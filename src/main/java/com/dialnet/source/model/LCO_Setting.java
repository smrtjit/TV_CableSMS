package com.dialnet.source.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "lco_setting")
public class LCO_Setting {

	@Id
	String lco_id;
	String billing_cycle;
	String service_tax;
	String ent_tax;
	String other_tax;
	String lateFeeCharges;
	String discount;
	public LCO_Setting() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public LCO_Setting(String lco_id, String billing_cycle, String service_tax, String ent_tax, String other_tax,
			String lateFeeCharges, String discount) {
		super();
		this.lco_id = lco_id;
		this.billing_cycle = billing_cycle;
		this.service_tax = service_tax;
		this.ent_tax = ent_tax;
		this.other_tax = other_tax;
		this.lateFeeCharges = lateFeeCharges;
		this.discount = discount;
	}
	
	public String getLateFeeCharges() {
		return lateFeeCharges;
	}

	public void setLateFeeCharges(String lateFeeCharges) {
		this.lateFeeCharges = lateFeeCharges;
	}

	public String getLco_id() {
		return lco_id;
	}
	public void setLco_id(String lco_id) {
		this.lco_id = lco_id;
	}
	public String getBilling_cycle() {
		return billing_cycle;
	}
	public void setBilling_cycle(String billing_cycle) {
		this.billing_cycle = billing_cycle;
	}
	public String getService_tax() {
		return service_tax;
	}
	public void setService_tax(String service_tax) {
		this.service_tax = service_tax;
	}
	public String getEnt_tax() {
		return ent_tax;
	}
	public void setEnt_tax(String ent_tax) {
		this.ent_tax = ent_tax;
	}
	public String getOther_tax() {
		return other_tax;
	}
	public void setOther_tax(String other_tax) {
		this.other_tax = other_tax;
	}
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	
}
