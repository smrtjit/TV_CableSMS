package com.dialnet.source.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "lm_login")
/**
 * @author KRISHNA
 *
 */
public class LMUser {
	
	@Id
	@GeneratedValue
	private Long id;
	
	@NotEmpty
	@Size(min = 4, max = 20)
	private String username;

	@NotEmpty
	private String password;
	
	@NotEmpty
	private String designation;

	
	@NotEmpty
	private String name;

	
	@NotEmpty
	private String email;

	
	@NotEmpty
	private String mobile;

	
	@NotEmpty
	private String landline_no;

	@NotEmpty
	private String corres_add;

	
	@NotEmpty
	private String permanent_add;

	
	@NotEmpty
	private String identity_proof;

	@NotEmpty
	private String add_proof;

	@NotEmpty
	private String photo;
	
	@NotEmpty
	private String responsibility;
	
	@NotEmpty
	private String timestamp;
	
	public LMUser() {
		super();
	}

	public LMUser(Long id, String username, String password, String designation, String name, String email,
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

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
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
