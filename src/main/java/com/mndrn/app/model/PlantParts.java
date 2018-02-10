/**
* @author suren
 *
*/

package com.mndrn.app.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class PlantParts {

	@Id
	@GeneratedValue
	private long id;

	private int photoSterolLevel;

	private int alkaloidLevel;

	private int saponinLevel;

	private int flavonoidLevel;

	private int anthraquinoneLevel;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getPhotoSterolLevel() {
		return photoSterolLevel;
	}

	public void setPhotoSterolLevel(int photoSterolLevel) {
		this.photoSterolLevel = photoSterolLevel;
	}

	public int getAlkaloidLevel() {
		return alkaloidLevel;
	}

	public void setAlkaloidLevel(int alkaloidLevel) {
		this.alkaloidLevel = alkaloidLevel;
	}

	public int getSaponinLevel() {
		return saponinLevel;
	}

	public void setSaponinLevel(int saponinLevel) {
		this.saponinLevel = saponinLevel;
	}

	public int getFlavonoidLevel() {
		return flavonoidLevel;
	}

	public void setFlavonoidLevel(int flavonoidLevel) {
		this.flavonoidLevel = flavonoidLevel;
	}

	public int getAnthraquinoneLevel() {
		return anthraquinoneLevel;
	}

	public void setAnthraquinoneLevel(int anthraquinoneLevel) {
		this.anthraquinoneLevel = anthraquinoneLevel;
	}

}
