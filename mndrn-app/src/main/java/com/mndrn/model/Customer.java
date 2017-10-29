package com.mndrn.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Customer {
	@Id
	@GeneratedValue
	private long id;

	private String totalAsh;

	private String acidInsolubleAsh;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTotalAsh() {
		return totalAsh;
	}

	public void setTotalAsh(String totalAsh) {
		this.totalAsh = totalAsh;
	}

	public String getAcidInsolubleAsh() {
		return acidInsolubleAsh;
	}

	public void setAcidInsolubleAsh(String acidInsolubleAsh) {
		this.acidInsolubleAsh = acidInsolubleAsh;
	}

}