/**
* @author suren
 *
*/

package com.mndrn.app.model;

public class SearchCriteria {
	private String genusName;
	private String species;
	private String localName;
	private String compoundName;
	private String IUPACName;
	private String BiologicalActivity;

	public String getGenusName() {
		return genusName;
	}

	public void setGenusName(String genusName) {
		this.genusName = genusName;
	}

	public String getSpecies() {
		return species;
	}

	public void setSpecies(String species) {
		this.species = species;
	}

	public String getLocalName() {
		return localName;
	}

	public void setLocalName(String localName) {
		this.localName = localName;
	}

	public String getCompoundName() {
		return compoundName;
	}

	public void setCompoundName(String compoundName) {
		this.compoundName = compoundName;
	}

	public String getIUPACName() {
		return IUPACName;
	}

	public void setIUPACName(String iUPACName) {
		IUPACName = iUPACName;
	}

	public String getBiologicalActivity() {
		return BiologicalActivity;
	}

	public void setBiologicalActivity(String biologicalActivity) {
		BiologicalActivity = biologicalActivity;
	}

}
