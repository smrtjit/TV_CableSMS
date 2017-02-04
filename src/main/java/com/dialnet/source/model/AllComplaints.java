package com.dialnet.source.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "all_complaints")
public class AllComplaints {
	
	@Id
	//@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long complaint_no;
	@NotEmpty
	@Size(min = 1, max = 25)
	private String complaint_type;
	
	@NotEmpty
	@Size(min = 1, max = 25)
	private String complaint_status;
	
	@NotEmpty
	@Size(min = 1, max = 25)
	private String customer_vcno;
	
	@NotEmpty
	@Size(min = 1, max = 500)
	private String cust_remark;
	
	@NotEmpty
	@Size(min = 1, max = 75)
	private String open_date;
	
	@NotEmpty
	@Size(min = 1, max = 500)
	private String closing_remark;
	
	@NotEmpty
	@Size(min = 1, max = 75)
	private String closing_date;
	private String creater_Id;
	private String customer_name;
	private String customer_add;
	private String customer_mobile;
	String lco_id;
	public AllComplaints() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public String getLco_id() {
		return lco_id;
	}
	public void setLco_id(String lco_id) {
		this.lco_id = lco_id;
	}



	public AllComplaints(long complaint_no, String complaint_type, String complaint_status, String customer_vcno,
			String cust_remark, String open_date, String closing_remark, String closing_date, String creater_Id,
			String customer_name, String customer_add, String customer_mobile, String lco_id) {
		super();
		this.complaint_no = complaint_no;
		this.complaint_type = complaint_type;
		this.complaint_status = complaint_status;
		this.customer_vcno = customer_vcno;
		this.cust_remark = cust_remark;
		this.open_date = open_date;
		this.closing_remark = closing_remark;
		this.closing_date = closing_date;
		this.creater_Id = creater_Id;
		this.customer_name = customer_name;
		this.customer_add = customer_add;
		this.customer_mobile = customer_mobile;
		this.lco_id = lco_id;
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

	public String getCustomer_mobile() {
		return customer_mobile;
	}

	public void setCustomer_mobile(String customer_mobile) {
		this.customer_mobile = customer_mobile;
	}

	public long getComplaint_no() {
		return complaint_no;
	}
	public void setComplaint_no(long complaint_no) {
		this.complaint_no = complaint_no;
	}
	public String getComplaint_type() {
		return complaint_type;
	}
	public void setComplaint_type(String complaint_type) {
		this.complaint_type = complaint_type;
	}
	public String getComplaint_status() {
		return complaint_status;
	}
	public void setComplaint_status(String complaint_status) {
		this.complaint_status = complaint_status;
	}
	
	public String getCustomer_vcno() {
		return customer_vcno;
	}

	public void setCustomer_vcno(String customer_vcno) {
		this.customer_vcno = customer_vcno;
	}

	public String getCust_remark() {
		return cust_remark;
	}
	public void setCust_remark(String cust_remark) {
		this.cust_remark = cust_remark;
	}
	public String getOpen_date() {
		return open_date;
	}
	public void setOpen_date(String open_date) {
		this.open_date = open_date;
	}
	public String getClosing_remark() {
		return closing_remark;
	}
	public void setClosing_remark(String closing_remark) {
		this.closing_remark = closing_remark;
	}
	public String getClosing_date() {
		return closing_date;
	}
	public void setClosing_date(String closing_date) {
		this.closing_date = closing_date;
	}
	public String getCreater_Id() {
		return creater_Id;
	}
	public void setCreater_Id(String creater_Id) {
		this.creater_Id = creater_Id;
	}
	
}
