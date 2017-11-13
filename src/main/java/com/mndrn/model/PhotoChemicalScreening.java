/**
* @author suren
 *
*/

package com.mndrn.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.Valid;

@Entity
public class PhotoChemicalScreening {
	@Id
	@GeneratedValue
	private long id;

	@OneToOne
	@Valid
	@JoinColumn(name = "LEAF_ID")
	private PlantParts leaf;

	@OneToOne
	@Valid
	@JoinColumn(name = "BARK_ID")
	private PlantParts bark;

	@OneToOne
	@Valid
	@JoinColumn(name = "FRUIT_ID")
	private PlantParts fruit;

	@OneToOne
	@Valid
	@JoinColumn(name = "ROOT_ID")
	private PlantParts root;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public PlantParts getLeaf() {
		return leaf;
	}

	public void setLeaf(PlantParts leaf) {
		this.leaf = leaf;
	}

	public PlantParts getBark() {
		return bark;
	}

	public void setBark(PlantParts bark) {
		this.bark = bark;
	}

	public PlantParts getFruit() {
		return fruit;
	}

	public void setFruit(PlantParts fruit) {
		this.fruit = fruit;
	}

	public PlantParts getRoot() {
		return root;
	}

	public void setRoot(PlantParts root) {
		this.root = root;
	}

}
