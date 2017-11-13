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
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Compound {
	@Id
	@GeneratedValue
	private long id;

	@ElementCollection
	private List<String> synonymList;

	@NotNull
	@Size(min = 1)
	private String IUPACName;

	@OneToOne
	@Valid
	@JoinColumn(name = "CHEM_STR_ID")
	private ImageWitExpln chemicalStructure;

	@ManyToMany(mappedBy = "chemConstinuentList")
	private List<Genus> isolatedFrom;

	@NotNull
	private Double meltingPoint;

	@OneToOne
	@Valid
	@JoinColumn(name = "SOLUBILITY_ID")
	private Solubility solubility;

	@OneToOne
	@Valid
	@JoinColumn(name = "PHYSICAL_CHRC_ID")
	private ImageWitExpln physicalCharacteristics;

	@OneToOne
	@Valid
	@JoinColumn(name = "IR_DATA_ID")
	private ImageWitTopicExpln IRData;

	@OneToOne
	@Valid
	@JoinColumn(name = "NM_DATA_ID")
	private ImageWitTopicExpln NMRData;

	@OneToOne
	@Valid
	@JoinColumn(name = "MS_DATA_ID")
	private ImageWitTopicExpln MSData;

	@OneToOne
	@Valid
	@JoinColumn(name = "PHARM_ACTIVITY_ID")
	private ImageWitTopicExpln pharmacologicalActivity;

	@ElementCollection
	private List<String> referenceList;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public List<String> getSynonymList() {
		return synonymList;
	}

	public void setSynonymList(List<String> synonymList) {
		this.synonymList = synonymList;
	}

	public String getIUPACName() {
		return IUPACName;
	}

	public void setIUPACName(String iUPACName) {
		IUPACName = iUPACName;
	}

	public ImageWitExpln getChemicalStructure() {
		return chemicalStructure;
	}

	public void setChemicalStructure(ImageWitExpln chemicalStructure) {
		this.chemicalStructure = chemicalStructure;
	}

	public List<Genus> getIsolatedFrom() {
		return isolatedFrom;
	}

	public void setIsolatedFrom(List<Genus> isolatedFrom) {
		this.isolatedFrom = isolatedFrom;
	}

	public Double getMeltingPoint() {
		return meltingPoint;
	}

	public void setMeltingPoint(Double meltingPoint) {
		this.meltingPoint = meltingPoint;
	}

	public Solubility getSolubility() {
		return solubility;
	}

	public void setSolubility(Solubility solubility) {
		this.solubility = solubility;
	}

	public ImageWitExpln getPhysicalCharacteristics() {
		return physicalCharacteristics;
	}

	public void setPhysicalCharacteristics(ImageWitExpln physicalCharacteristics) {
		this.physicalCharacteristics = physicalCharacteristics;
	}

	public ImageWitTopicExpln getIRData() {
		return IRData;
	}

	public void setIRData(ImageWitTopicExpln iRData) {
		IRData = iRData;
	}

	public ImageWitTopicExpln getNMRData() {
		return NMRData;
	}

	public void setNMRData(ImageWitTopicExpln nMRData) {
		NMRData = nMRData;
	}

	public ImageWitTopicExpln getMSData() {
		return MSData;
	}

	public void setMSData(ImageWitTopicExpln mSData) {
		MSData = mSData;
	}

	public ImageWitTopicExpln getPharmacologicalActivity() {
		return pharmacologicalActivity;
	}

	public void setPharmacologicalActivity(ImageWitTopicExpln pharmacologicalActivity) {
		this.pharmacologicalActivity = pharmacologicalActivity;
	}

	public List<String> getReferenceList() {
		return referenceList;
	}

	public void setReferenceList(List<String> referenceList) {
		this.referenceList = referenceList;
	}

}
