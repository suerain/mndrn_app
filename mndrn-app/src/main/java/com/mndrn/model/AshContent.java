package com.mndrn.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author suren
 *
 */
@SuppressWarnings("deprecation")
@Entity
public class AshContent {
	@Id
	@GeneratedValue
	private long id;

	@NotEmpty
	private String totalAsh;

	@NotEmpty
	private String acidInsolubleAsh;

	@NotEmpty
	private String waterSolubleAsh;

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

	public String getWaterSolubleAsh() {
		return waterSolubleAsh;
	}

	public void setWaterSolubleAsh(String waterSolubleAsh) {
		this.waterSolubleAsh = waterSolubleAsh;
	}

}
