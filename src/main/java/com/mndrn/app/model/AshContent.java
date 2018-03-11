/**
 * @author suren
 *
 */

package com.mndrn.app.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class AshContent {
	@Id
	@GeneratedValue
	private long id;

	@NotNull
	@Size(min = 1, message = "Field cannot be empty")
	private String totalAsh;

	@NotNull
	@Size(min = 1, message = "Field cannot be empty")
	private String acidInsolubleAsh;

	@NotNull
	@Size(min = 1, message = "Field cannot be empty")
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
