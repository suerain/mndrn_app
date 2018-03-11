package com.mndrn.app.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Size;

@Entity(name = "AUTHORITIES")
public class Authority implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ID")
	private int id;

  	@Column(name = "AUTHORITY")
  	@Size(min = 1, message = "Field cannot be empty")
 	private String authority;
 	
	 public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
 
 	
}
