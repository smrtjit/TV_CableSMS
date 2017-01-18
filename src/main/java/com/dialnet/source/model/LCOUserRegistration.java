package com.dialnet.source.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "LCO_user_registration")
public class LCOUserRegistration {
	
	@Id
	@GeneratedValue
	private int id;
	
	@NotEmpty
	@Size(min = 4, max = 20)
	private String username;
	
	@NotEmpty
	@Size(min = 4, max = 20)
	private String password;
	
	@NotEmpty
	@Size(min = 4, max = 20)
	private String designation;
	
	@NotEmpty
	@Size(min = 4, max = 50)
	private String name;
	
	@NotEmpty
	@Size(min = 4, max = 50)
	private String email;
	
	@NotEmpty
	@Size(min = 4, max = 20)
	private String mobile;
	
	@NotEmpty
	@Size(min = 4, max = 20)
	private String landline_no;
	
	@NotEmpty
	@Size(min = 4, max = 200)
	private String corres_add;
	
	@NotEmpty
	@Size(min = 4, max = 200)
	private String permanent_add;
	
	
	@Size(min = 4, max = 20)
	private String identity_proof;
	
	@NotEmpty
	@Size(min = 4, max = 20)
	private String add_proof;
	
	
	@Size(min = 4, max = 200)
	private String photo;
	
	@NotEmpty
	@Size(min = 4, max = 100)
	private String responsibility;
	
	@NotEmpty
	@Size(min = 4, max = 40)
	private String timestamp;
	
	public LCOUserRegistration() {
		// TODO Auto-generated constructor stub
	}

	public LCOUserRegistration(int id, String username, String password, String designation, String name, String email,
			String mobile, String landline_no, String corres_add, String permanent_add, String identity_proof,
			String add_proof, String photo, String responsibility, String timestamp) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.designation = designation;
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.landline_no = landline_no;
		this.corres_add = corres_add;
		this.permanent_add = permanent_add;
		this.identity_proof = identity_proof;
		this.add_proof = add_proof;
		this.photo = photo;
		this.responsibility = responsibility;
		this.timestamp = timestamp;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getLandline_no() {
		return landline_no;
	}

	public void setLandline_no(String landline_no) {
		this.landline_no = landline_no;
	}

	public String getCorres_add() {
		return corres_add;
	}

	public void setCorres_add(String corres_add) {
		this.corres_add = corres_add;
	}

	public String getPermanent_add() {
		return permanent_add;
	}

	public void setPermanent_add(String permanent_add) {
		this.permanent_add = permanent_add;
	}

	public String getIdentity_proof() {
		return identity_proof;
	}

	public void setIdentity_proof(String identity_proof) {
		this.identity_proof = identity_proof;
	}

	public String getAdd_proof() {
		return add_proof;
	}

	public void setAdd_proof(String add_proof) {
		this.add_proof = add_proof;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getResponsibility() {
		return responsibility;
	}

	public void setResponsibility(String responsibility) {
		this.responsibility = responsibility;
	}

	public String getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}
	
}
