/**
* @author suren
 *
*/

package com.mndrn.app.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Genus {
	@Id
	@GeneratedValue
	private long genusId;

	@NotNull
	@Size(min = 1)
	private String name;

	@NotNull
	@Size(min = 1)
	private String species;

	@ManyToMany
	@JoinTable(name = "GENUS_SYNONYM", joinColumns = @JoinColumn(name = "genusId"), inverseJoinColumns = @JoinColumn(name = "synonymId"))
	private List<Genus> synonymList;

	@ElementCollection
	private List<String> localNameList;

	@OneToMany(cascade = CascadeType.PERSIST)
	@JoinTable(name = "GENUS_HERBARIUM", joinColumns = @JoinColumn(name = "genusId"), inverseJoinColumns = @JoinColumn(name = "herbariumId"))
	private List<HerbariumEntry> herbariumEntryList;

	@OneToMany(cascade = CascadeType.PERSIST)
	@JoinTable(name = "GENUS_PLANTSPECIMEN", joinColumns = @JoinColumn(name = "genusId"), inverseJoinColumns = @JoinColumn(name = "plantSpecimenId"))
	private List<PlantSpecimenEntry> plantSpecimenList;

	@OneToMany(cascade = CascadeType.PERSIST)
	@JoinTable(name = "GENUS_PHOTOGRAPH", joinColumns = @JoinColumn(name = "genusId"), inverseJoinColumns = @JoinColumn(name = "photographId"))
	private List<PhotographEntry> photographList;

	@OneToOne(cascade = CascadeType.PERSIST)
	@Valid
	@JoinColumn(name = "ASH_CONTENT_ID")
	private AshContent ashContent;

	@NotNull
	@Size(min = 1)
	private String physicalCharacteristics;

	@NotNull
	@Size(min = 1)
	private String moistureContent;

	@OneToMany(cascade = CascadeType.PERSIST)
	@JoinTable(name = "GENUS_TRAVERSESECTION", joinColumns = @JoinColumn(name = "genusId"), inverseJoinColumns = @JoinColumn(name = "traverseSectionId"))
	private List<TraverseSectionEntry> traverseSectionList;

	@NotNull
	@Size(min = 1)
	private String traverseSectionExpln;

	@OneToOne(cascade = CascadeType.PERSIST)
	@Valid
	@JoinColumn(name = "PHOTO_CHEM_SCRN_ID")
	private PhotoChemicalScreening photoChemScreening;

	@OneToOne(cascade = CascadeType.PERSIST)
	@Valid
	@JoinColumn(name = "HPLC_PFL_ID")
	private HPLC_TLC_Entry HPLC_Profile;

	@OneToOne(cascade = CascadeType.PERSIST)
	@Valid
	@JoinColumn(name = "TLC_PFL_ID")
	private HPLC_TLC_Entry TLC_Profile;

	@ManyToMany
	@JoinTable(name = "GENUS_COMPOUND", joinColumns = @JoinColumn(name = "genusId"), inverseJoinColumns = @JoinColumn(name = "compoundId"))
	private List<Compound> chemConstinuentList;

	@NotNull
	@Size(min = 1)
	private String DNABarcoding;

	@OneToMany(cascade = CascadeType.PERSIST)
	@JoinTable(name = "GENUS_TRADITIONALUSES", joinColumns = @JoinColumn(name = "genusId"), inverseJoinColumns = @JoinColumn(name = "traditionalUsesId"))
	private List<TraditionalUsesEntry> traditionalUsesList;

	@OneToMany(cascade = CascadeType.PERSIST)
	@JoinTable(name = "GENUS_PHARMACOLOGICALACTIVITY", joinColumns = @JoinColumn(name = "genusId"), inverseJoinColumns = @JoinColumn(name = "pharmacologicalActivityId"))
	private List<PharmacologicalActivityEntry> pharmacologicalActivityList;

	@ElementCollection
	private List<String> referenceList;

	public long getGenusId() {
		return genusId;
	}

	public void setGenusId(long genusId) {
		this.genusId = genusId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSpecies() {
		return species;
	}

	public void setSpecies(String species) {
		this.species = species;
	}

	public List<Genus> getSynonymList() {
		return synonymList;
	}

	public void setSynonymList(List<Genus> synonymList) {
		this.synonymList = synonymList;
	}

	public List<String> getLocalNameList() {
		return localNameList;
	}

	public void setLocalNameList(List<String> localNameList) {
		this.localNameList = localNameList;
	}

	public List<HerbariumEntry> getHerbariumEntryList() {
		return herbariumEntryList;
	}

	public void setHerbariumEntryList(List<HerbariumEntry> herbariumEntryList) {
		this.herbariumEntryList = herbariumEntryList;
	}

	public List<PlantSpecimenEntry> getPlantSpecimenList() {
		return plantSpecimenList;
	}

	public void setPlantSpecimenList(List<PlantSpecimenEntry> plantSpecimenList) {
		this.plantSpecimenList = plantSpecimenList;
	}

	public List<PhotographEntry> getPhotographList() {
		return photographList;
	}

	public void setPhotographList(List<PhotographEntry> photographList) {
		this.photographList = photographList;
	}

	public AshContent getAshContent() {
		return ashContent;
	}

	public void setAshContent(AshContent ashContent) {
		this.ashContent = ashContent;
	}

	public String getPhysicalCharacteristics() {
		return physicalCharacteristics;
	}

	public void setPhysicalCharacteristics(String physicalCharacteristics) {
		this.physicalCharacteristics = physicalCharacteristics;
	}

	public String getMoistureContent() {
		return moistureContent;
	}

	public void setMoistureContent(String moistureContent) {
		this.moistureContent = moistureContent;
	}

	public List<TraverseSectionEntry> getTraverseSectionList() {
		return traverseSectionList;
	}

	public void setTraverseSectionList(List<TraverseSectionEntry> traverseSectionList) {
		this.traverseSectionList = traverseSectionList;
	}

	public String getTraverseSectionExpln() {
		return traverseSectionExpln;
	}

	public void setTraverseSectionExpln(String traverseSectionExpln) {
		this.traverseSectionExpln = traverseSectionExpln;
	}

	public PhotoChemicalScreening getPhotoChemScreening() {
		return photoChemScreening;
	}

	public void setPhotoChemScreening(PhotoChemicalScreening photoChemScreening) {
		this.photoChemScreening = photoChemScreening;
	}

	public HPLC_TLC_Entry getHPLC_Profile() {
		return HPLC_Profile;
	}

	public void setHPLC_Profile(HPLC_TLC_Entry hPLC_Profile) {
		HPLC_Profile = hPLC_Profile;
	}

	public HPLC_TLC_Entry getTLC_Profile() {
		return TLC_Profile;
	}

	public void setTLC_Profile(HPLC_TLC_Entry tLC_Profile) {
		TLC_Profile = tLC_Profile;
	}

	public List<Compound> getChemConstinuentList() {
		return chemConstinuentList;
	}

	public void setChemConstinuentList(List<Compound> chemConstinuentList) {
		this.chemConstinuentList = chemConstinuentList;
	}

	public String getDNABarcoding() {
		return DNABarcoding;
	}

	public void setDNABarcoding(String dNABarcoding) {
		DNABarcoding = dNABarcoding;
	}

	public List<TraditionalUsesEntry> getTraditionalUsesList() {
		return traditionalUsesList;
	}

	public void setTraditionalUsesList(List<TraditionalUsesEntry> traditionalUsesList) {
		this.traditionalUsesList = traditionalUsesList;
	}

	public List<PharmacologicalActivityEntry> getPharmacologicalActivityList() {
		return pharmacologicalActivityList;
	}

	public void setPharmacologicalActivityList(List<PharmacologicalActivityEntry> pharmacologicalActivityList) {
		this.pharmacologicalActivityList = pharmacologicalActivityList;
	}

	public List<String> getReferenceList() {
		return referenceList;
	}

	public void setReferenceList(List<String> referenceList) {
		this.referenceList = referenceList;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (genusId ^ (genusId >>> 32));
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((species == null) ? 0 : species.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Genus other = (Genus) obj;
		if (genusId != other.genusId)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (species == null) {
			if (other.species != null)
				return false;
		} else if (!species.equals(other.species))
			return false;
		return true;
	}

}
