
package com.dialnet.source.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "lco_package")
public class LCOPackages {

	@Id
	@GeneratedValue
	private int id;
	
	@NotEmpty
	@Size(min = 1, max = 10)
	private String code;
	
	@NotEmpty
	@Size(min = 4, max = 20)
	private String name;
	
	@NotEmpty
	@Size(min = 1, max = 10)
	private String price;
	
	@NotEmpty
	@Size(min = 1, max = 20)
	private String no_off_user;
	
	private String PDATE;
	private String exp_date;
	private String timestamp;
	public LCOPackages() {
		// TODO Auto-generated constructor stub
	}
	
	public LCOPackages(int id, String code, String name, String price, String no_off_user, String pDATE,
			String exp_date, String timestamp) {
		super();
		this.id = id;
		this.code = code;
		this.name = name;
		this.price = price;
		this.no_off_user = no_off_user;
		PDATE = pDATE;
		this.exp_date = exp_date;
		this.timestamp = timestamp;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getNo_off_user() {
		return no_off_user;
	}
	public void setNo_off_user(String no_off_user) {
		this.no_off_user = no_off_user;
	}
	public String getPDATE() {
		return PDATE;
	}
	public void setPDATE(String pDATE) {
		PDATE = pDATE;
	}
	public String getExp_date() {
		return exp_date;
	}
	public void setExp_date(String exp_date) {
		this.exp_date = exp_date;
	}
	public String getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}
	
}
