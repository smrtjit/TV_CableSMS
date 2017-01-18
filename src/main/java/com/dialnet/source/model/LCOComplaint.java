package com.dialnet.source.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "lco_complaint")
public class LCOComplaint {

	@Id
	@GeneratedValue
	private int id;

	@NotEmpty
	@Size(min = 1, max = 25)
	private String complaint_no;

	@NotEmpty
	@Size(min = 1, max = 20)
	private String complaint_type;

	@NotEmpty
	@Size(min = 1, max = 20)
	private String customer_mobile;

	private String customer_name;
	@NotEmpty
	@Size(min = 1, max = 200)
	private String customer_add;

	@NotEmpty
	private String customer_email;
	@NotEmpty
	private String customer_vc_no;

	@NotEmpty
	private String customer_stb_no;
	private String customer_waranty_date;
	private String connection_status;
	private String package_name;
	private String amount_balance;
	private String last_payment;
	private String last_recharge_date;
	private String timestamp;
	private String complaint_status;

	public LCOComplaint() {
		// TODO Auto-generated constructor stub
	}

	public LCOComplaint(int id, String complaint_no, String complaint_type, String customer_mobile,String complaint_status,
			String customer_name, String customer_add, String customer_email, String customer_vc_no,
			String customer_stb_no, String customer_waranty_date, String connection_status, String package_name,
			String amount_balance, String last_payment, String last_recharge_date, String timestamp) {
		super();
		this.id = id;
		this.complaint_no = complaint_no;
		this.complaint_type = complaint_type;
		this.customer_mobile = customer_mobile;
		this.customer_name = customer_name;
		this.customer_add = customer_add;
		this.customer_email = customer_email;
		this.customer_vc_no = customer_vc_no;
		this.customer_stb_no = customer_stb_no;
		this.customer_waranty_date = customer_waranty_date;
		this.connection_status = connection_status;
		this.package_name = package_name;
		this.amount_balance = amount_balance;
		this.last_payment = last_payment;
		this.last_recharge_date = last_recharge_date;
		this.timestamp = timestamp;
		this.complaint_status = complaint_status;
		
	}
	
	public String getComplaint_status() {
		return complaint_status;
	}

	public void setComplaint_status(String complaint_status) {
		this.complaint_status = complaint_status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getComplaint_no() {
		return complaint_no;
	}

	public void setComplaint_no(String complaint_no) {
		this.complaint_no = complaint_no;
	}

	public String getComplaint_type() {
		return complaint_type;
	}

	public void setComplaint_type(String complaint_type) {
		this.complaint_type = complaint_type;
	}

	public String getCustomer_mobile() {
		return customer_mobile;
	}

	public void setCustomer_mobile(String customer_mobile) {
		this.customer_mobile = customer_mobile;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	public String getCustomer_add() {
		return customer_add;
	}

	public void setCustomer_add(String customer_add) {
		this.customer_add = customer_add;
	}

	public String getCustomer_email() {
		return customer_email;
	}

	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}

	public String getCustomer_vc_no() {
		return customer_vc_no;
	}

	public void setCustomer_vc_no(String customer_vc_no) {
		this.customer_vc_no = customer_vc_no;
	}

	public String getCustomer_stb_no() {
		return customer_stb_no;
	}

	public void setCustomer_stb_no(String customer_stb_no) {
		this.customer_stb_no = customer_stb_no;
	}

	public String getCustomer_waranty_date() {
		return customer_waranty_date;
	}

	public void setCustomer_waranty_date(String customer_waranty_date) {
		this.customer_waranty_date = customer_waranty_date;
	}

	public String getConnection_status() {
		return connection_status;
	}

	public void setConnection_status(String connection_status) {
		this.connection_status = connection_status;
	}

	public String getPackage_name() {
		return package_name;
	}

	public void setPackage_name(String package_name) {
		this.package_name = package_name;
	}

	public String getAmount_balance() {
		return amount_balance;
	}

	public void setAmount_balance(String amount_balance) {
		this.amount_balance = amount_balance;
	}

	public String getLast_payment() {
		return last_payment;
	}

	public void setLast_payment(String last_payment) {
		this.last_payment = last_payment;
	}

	public String getLast_recharge_date() {
		return last_recharge_date;
	}

	public void setLast_recharge_date(String last_recharge_date) {
		this.last_recharge_date = last_recharge_date;
	}

	public String getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}

}
