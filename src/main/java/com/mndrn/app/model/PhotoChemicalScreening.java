/**
* @author suren
 *
*/

package com.mndrn.app.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "PhotoChemicalScreening")
public class PhotoChemicalScreening {
	@Id
	@GeneratedValue
	private long id;

	@OneToOne(cascade = CascadeType.PERSIST)
	@Valid
	@JoinColumn(name = "LEAF_ID")
	private PlantParts leaf;

	@OneToOne(cascade = CascadeType.PERSIST)
	@Valid
	@JoinColumn(name = "BARK_ID")
	private PlantParts bark;

	@OneToOne(cascade = CascadeType.PERSIST)
	@Valid
	@JoinColumn(name = "FRUIT_ID")
	private PlantParts fruit;

	@OneToOne(cascade = CascadeType.PERSIST)
	@Valid
	@JoinColumn(name = "ROOT_ID")
	private PlantParts root;

	@NotNull
	@Size(min = 1)
	private String expln;

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

	public String getExpln() {
		return expln;
	}

	public void setExpln(String expln) {
		this.expln = expln;
	}

}
