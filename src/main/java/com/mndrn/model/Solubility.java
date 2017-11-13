/**
* @author suren
 *
*/

package com.mndrn.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Solubility {
	@Id
	@GeneratedValue
	private long id;

	@NotNull
	@Size(min = 1)
	private String hexane;

	@NotNull
	@Size(min = 1)
	private String moistureContent;

	@NotNull
	@Size(min = 1)
	private String water;

	@NotNull
	@Size(min = 1)
	private String ethylAcetate;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getHexane() {
		return hexane;
	}

	public void setHexane(String hexane) {
		this.hexane = hexane;
	}

	public String getMoistureContent() {
		return moistureContent;
	}

	public void setMoistureContent(String moistureContent) {
		this.moistureContent = moistureContent;
	}

	public String getWater() {
		return water;
	}

	public void setWater(String water) {
		this.water = water;
	}

	public String getEthylAcetate() {
		return ethylAcetate;
	}

	public void setEthylAcetate(String ethylAcetate) {
		this.ethylAcetate = ethylAcetate;
	}

}
