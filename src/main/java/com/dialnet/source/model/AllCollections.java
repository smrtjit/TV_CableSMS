package com.dialnet.source.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "All_Collection")
public class AllCollections {
	
	@Id
	@GeneratedValue
	private String Invoice;
	@NotEmpty
	@Size(min = 1, max = 35)
	private String VC_No;
	
	@NotEmpty
	private String cust_mobile;
	
	@NotEmpty
	@Size(min = 1, max = 150)
	private String Cust_Name;
	
	@NotEmpty
	@Size(min = 1, max = 95)
	private String Current_Pckg;
	
	@NotEmpty
	@Size(min = 1, max = 10)
	private String Pckg_Price;
	
	@NotEmpty
	@Size(min = 1, max = 15)
	private String Recharge_Amount;
	
	@NotEmpty
	@Size(min = 1, max = 5)
	private String Discount;
	
	@NotEmpty
	@Size(min = 1, max = 25)
	private String Payment_Mode;
	private String LM_Id;
	private String Payment_Status;
	private String RefernceId;
	private String trndate;
	public AllCollections() {
		// TODO Auto-generated constructor stub
	}

	public AllCollections(String invoice, String vC_No, String cust_mobile, String cust_Name, String current_Pckg,
			String pckg_Price, String recharge_Amount, String discount, String payment_Mode, String lM_Id,
			String payment_Status, String refernceId, String trndate) {
		super();
		Invoice = invoice;
		VC_No = vC_No;
		this.cust_mobile = cust_mobile;
		Cust_Name = cust_Name;
		Current_Pckg = current_Pckg;
		Pckg_Price = pckg_Price;
		Recharge_Amount = recharge_Amount;
		Discount = discount;
		Payment_Mode = payment_Mode;
		LM_Id = lM_Id;
		Payment_Status = payment_Status;
		RefernceId = refernceId;
		this.trndate = trndate;
	}

	public String getInvoice() {
		return Invoice;
	}
	public void setInvoice(String invoice) {
		Invoice = invoice;
	}
	public String getVC_No() {
		return VC_No;
	}
	public void setVC_No(String vC_No) {
		VC_No = vC_No;
	}
	public String getCust_Name() {
		return Cust_Name;
	}
	public String getCust_mobile() {
		return cust_mobile;
	}

	public void setCust_mobile(String cust_mobile) {
		this.cust_mobile = cust_mobile;
	}

	public void setCust_Name(String cust_Name) {
		Cust_Name = cust_Name;
	}
	public String getCurrent_Pckg() {
		return Current_Pckg;
	}
	public void setCurrent_Pckg(String current_Pckg) {
		Current_Pckg = current_Pckg;
	}
	public String getPckg_Price() {
		return Pckg_Price;
	}
	public void setPckg_Price(String pckg_Price) {
		Pckg_Price = pckg_Price;
	}
	public String getRecharge_Amount() {
		return Recharge_Amount;
	}
	public void setRecharge_Amount(String recharge_Amount) {
		Recharge_Amount = recharge_Amount;
	}
	public String getDiscount() {
		return Discount;
	}
	public void setDiscount(String discount) {
		Discount = discount;
	}
	public String getPayment_Mode() {
		return Payment_Mode;
	}
	public void setPayment_Mode(String payment_Mode) {
		Payment_Mode = payment_Mode;
	}
	public String getLM_Id() {
		return LM_Id;
	}
	public void setLM_Id(String lM_Id) {
		LM_Id = lM_Id;
	}
	public String getPayment_Status() {
		return Payment_Status;
	}
	public void setPayment_Status(String payment_Status) {
		Payment_Status = payment_Status;
	}
	public String getRefernceId() {
		return RefernceId;
	}
	public void setRefernceId(String refernceId) {
		RefernceId = refernceId;
	}
	public String getTrndate() {
		return trndate;
	}
	public void setTrndate(String trndate) {
		this.trndate = trndate;
	}
	
	
}
