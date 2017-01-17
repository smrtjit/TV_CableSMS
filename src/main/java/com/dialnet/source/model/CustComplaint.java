package com.dialnet.source.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "user_complaint")
public class CustComplaint {
	
	@Id
	@GeneratedValue
	private int id;
	
	@NotEmpty
	@Size(min = 1, max = 25)
	private String userid;
	
	@NotEmpty
	@Size(min = 1, max = 20)
	private String vc_no;
	
	@NotEmpty
	@Size(min = 1, max = 20)
	private String complaint_type;
	private String close_date_time;
	@NotEmpty
	@Size(min = 1, max = 10)
	private String status;
	private String complaint_lock_by;
	private String time_stamp;
	private String opening_remarks;
	private String closing_remarks;
	
public CustComplaint() {
	// TODO Auto-generated constructor stub
}

public CustComplaint(int id, String userid, String vc_no, String complaint_type, String close_date_time, String status,
		String complaint_lock_by, String time_stamp, String opening_remarks, String closing_remarks) {
	super();
	this.id = id;
	this.userid = userid;
	this.vc_no = vc_no;
	this.complaint_type = complaint_type;
	this.close_date_time = close_date_time;
	this.status = status;
	this.complaint_lock_by = complaint_lock_by;
	this.time_stamp = time_stamp;
	this.opening_remarks = opening_remarks;
	this.closing_remarks = closing_remarks;
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getUserid() {
	return userid;
}

public void setUserid(String userid) {
	this.userid = userid;
}

public String getVc_no() {
	return vc_no;
}

public void setVc_no(String vc_no) {
	this.vc_no = vc_no;
}

public String getComplaint_type() {
	return complaint_type;
}

public void setComplaint_type(String complaint_type) {
	this.complaint_type = complaint_type;
}

public String getClose_date_time() {
	return close_date_time;
}

public void setClose_date_time(String close_date_time) {
	this.close_date_time = close_date_time;
}

public String getStatus() {
	return status;
}

public void setStatus(String status) {
	this.status = status;
}

public String getComplaint_lock_by() {
	return complaint_lock_by;
}

public void setComplaint_lock_by(String complaint_lock_by) {
	this.complaint_lock_by = complaint_lock_by;
}

public String getTime_stamp() {
	return time_stamp;
}

public void setTime_stamp(String time_stamp) {
	this.time_stamp = time_stamp;
}

public String getOpening_remarks() {
	return opening_remarks;
}

public void setOpening_remarks(String opening_remarks) {
	this.opening_remarks = opening_remarks;
}

public String getClosing_remarks() {
	return closing_remarks;
}

public void setClosing_remarks(String closing_remarks) {
	this.closing_remarks = closing_remarks;
}

	

}
