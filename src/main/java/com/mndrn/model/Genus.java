/**
* @author suren
 *
*/

package com.mndrn.model;

import java.util.List;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Genus {
	@Id
	@GeneratedValue
	private long id;

	@NotNull
	@Size(min = 1)
	private String species;

	@ElementCollection
	private List<String> synonymList;

	@ElementCollection
	private List<String> localNameList;

	@OneToOne
	@Valid
	@JoinColumn(name = "HERBARIUM_ID")
	private Herbarium herbarium;

	@OneToOne
	@Valid
	@JoinColumn(name = "PLANT_SPECIUM_ID")
	private PlantSpecimen plantSpecimen;

	@OneToOne
	@Valid
	@JoinColumn(name = "PHOTOGRAPH_ID")
	private Photograph photograph;

	@OneToOne
	@Valid
	@JoinColumn(name = "ASH_CONTENT_ID")
	private AshContent ashContent;

	@OneToOne
	@Valid
	@JoinColumn(name = "PHYSICAL_CHAR_ID")
	private PhysicalCharacteristics phisicalCharacteristics;

	@NotNull
	@Size(min = 1)
	private String moistureContent;

	@OneToOne
	@Valid
	@JoinColumn(name = "TRAV_SCTN_ID")
	private TraverseSection traverseSection;

	@OneToOne
	@Valid
	@JoinColumn(name = "PHOTO_CHEM_SCRN_ID")
	private PhotoChemicalScreening photoChemScreening;

	@OneToOne
	@Valid
	@JoinColumn(name = "HPLC_TLC_PFL_ID")
	private HPLC_TLC_Profile HPLC_TLC_Profile;

	@ManyToMany
	@JoinTable(name = "GENUS_COMPOUND", joinColumns = @JoinColumn(name = "genusId"), inverseJoinColumns = @JoinColumn(name = "compoundId"))
	private List<Compound> chemConstinuentList;

	@NotNull
	@Size(min = 1)
	private String DNABarcoding;

	@OneToOne
	@Valid
	@JoinColumn(name = "TRAD_USES_ID")
	private TraditionalUses traditionalUses;

	@OneToOne
	@Valid
	@JoinColumn(name = "PHARM_ACTIVITY_ID")
	private PharmacologicalActivity pharmacologicalActivity;

	@ElementCollection
	private List<String> referenceList;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getSpecies() {
		return species;
	}

	public void setSpecies(String species) {
		this.species = species;
	}

	public List<String> getSynonymList() {
		return synonymList;
	}

	public void setSynonymList(List<String> synonymList) {
		this.synonymList = synonymList;
	}

	public List<String> getLocalNameList() {
		return localNameList;
	}

	public void setLocalNameList(List<String> localNameList) {
		this.localNameList = localNameList;
	}

	public Herbarium getHerbarium() {
		return herbarium;
	}

	public void setHerbarium(Herbarium herbarium) {
		this.herbarium = herbarium;
	}

	public PlantSpecimen getPlantSpecimen() {
		return plantSpecimen;
	}

	public void setPlantSpecimen(PlantSpecimen plantSpecimen) {
		this.plantSpecimen = plantSpecimen;
	}

	public Photograph getPhotograph() {
		return photograph;
	}

	public void setPhotograph(Photograph photograph) {
		this.photograph = photograph;
	}

	public AshContent getAshContent() {
		return ashContent;
	}

	public void setAshContent(AshContent ashContent) {
		this.ashContent = ashContent;
	}

	public PhysicalCharacteristics getPhisicalCharacteristics() {
		return phisicalCharacteristics;
	}

	public void setPhisicalCharacteristics(PhysicalCharacteristics phisicalCharacteristics) {
		this.phisicalCharacteristics = phisicalCharacteristics;
	}

	public String getMoistureContent() {
		return moistureContent;
	}

	public void setMoistureContent(String moistureContent) {
		this.moistureContent = moistureContent;
	}

	public TraverseSection getTraverseSection() {
		return traverseSection;
	}

	public void setTraverseSection(TraverseSection traverseSection) {
		this.traverseSection = traverseSection;
	}

	public PhotoChemicalScreening getPhotoChemScreening() {
		return photoChemScreening;
	}

	public void setPhotoChemScreening(PhotoChemicalScreening photoChemScreening) {
		this.photoChemScreening = photoChemScreening;
	}

	public HPLC_TLC_Profile getHPLC_TLC_Profile() {
		return HPLC_TLC_Profile;
	}

	public void setHPLC_TLC_Profile(HPLC_TLC_Profile hPLC_TLC_Profile) {
		HPLC_TLC_Profile = hPLC_TLC_Profile;
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

	public TraditionalUses getTraditionalUses() {
		return traditionalUses;
	}

	public void setTraditionalUses(TraditionalUses traditionalUses) {
		this.traditionalUses = traditionalUses;
	}

	public PharmacologicalActivity getPharmacologicalActivity() {
		return pharmacologicalActivity;
	}

	public void setPharmacologicalActivity(PharmacologicalActivity pharmacologicalActivity) {
		this.pharmacologicalActivity = pharmacologicalActivity;
	}

	public List<String> getReferenceList() {
		return referenceList;
	}

	public void setReferenceList(List<String> referenceList) {
		this.referenceList = referenceList;
	}

}
