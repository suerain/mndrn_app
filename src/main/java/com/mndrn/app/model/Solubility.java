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
public class Solubility {
	@Id
	@GeneratedValue
	private long id;

	@NotNull
	@Size(min = 1, message = "Field cannot be empty")
	private String hexane;

	@NotNull
	@Size(min = 1, message = "Field cannot be empty")
	private String methanol;

	@NotNull
	@Size(min = 1, message = "Field cannot be empty")
	private String water;

	@NotNull
	@Size(min = 1, message = "Field cannot be empty")
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

	public String getMethanol() {
		return methanol;
	}

	public void setMethanol(String methanol) {
		this.methanol = methanol;
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
