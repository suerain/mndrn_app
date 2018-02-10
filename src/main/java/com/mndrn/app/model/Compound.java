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
public class Compound {
	@Id
	@GeneratedValue
	private long compoundId;

	@NotNull
	@Size(min = 1)
	private String name;

	@ManyToMany
	@JoinTable(name = "COMPOUND_SYNONYM", joinColumns = @JoinColumn(name = "compoundId"), inverseJoinColumns = @JoinColumn(name = "synonymId"))
	private List<Compound> synonymList;

	@NotNull
	@Size(min = 1)
	private String IUPACName;

	@OneToMany(cascade = CascadeType.PERSIST)
	@JoinTable(name = "COMPOUND_CHEMICALSTRUCTURE", joinColumns = @JoinColumn(name = "compoundId"), inverseJoinColumns = @JoinColumn(name = "chemicalStructureId"))
	private List<ChemicalStructureEntry> chemicalStructureList;

	@ManyToMany(mappedBy = "chemConstinuentList")
	private List<Genus> isolatedFrom;

	@NotNull
	private Double meltingPoint;

	@OneToOne(cascade = CascadeType.PERSIST)
	@Valid
	@JoinColumn(name = "SOLUBILITY_ID")
	private Solubility solubility;

	@NotNull
	@Size(min = 1, max = Integer.MAX_VALUE, message = "The physicalCharacteristics value cannot be null")
	private String physicalCharacteristics;

	@OneToOne(cascade = CascadeType.PERSIST)
	@Valid
	@JoinColumn(name = "IR_DATA_ID")
	private IR_DataEntry IR_Data;

	@OneToMany(cascade = CascadeType.PERSIST)
	@JoinTable(name = "COMPOUND_NMR_DATA", joinColumns = @JoinColumn(name = "compoundId"), inverseJoinColumns = @JoinColumn(name = "NMR_DataId"))
	private List<NMR_DataEntry> NMR_DataList;

	@OneToOne(cascade = CascadeType.PERSIST)
	@Valid
	@JoinColumn(name = "MS_DATA_ID")
	private MS_DataEntry MS_Data;

	@OneToMany(cascade = CascadeType.PERSIST)
	@JoinTable(name = "COMPOUND_PHARMACOLOGICALACTIVITY", joinColumns = @JoinColumn(name = "compoundId"), inverseJoinColumns = @JoinColumn(name = "pharmacologicalActivityId"))
	private List<PharmacologicalActivityEntry> pharmacologicalActivityList;

	@ElementCollection
	private List<String> referenceList;

	public long getCompoundId() {
		return compoundId;
	}

	public void setCompoundId(long compoundId) {
		this.compoundId = compoundId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Compound> getSynonymList() {
		return synonymList;
	}

	public void setSynonymList(List<Compound> synonymList) {
		this.synonymList = synonymList;
	}

	public String getIUPACName() {
		return IUPACName;
	}

	public void setIUPACName(String iUPACName) {
		IUPACName = iUPACName;
	}

	public List<ChemicalStructureEntry> getChemicalStructureList() {
		return chemicalStructureList;
	}

	public void setChemicalStructureList(List<ChemicalStructureEntry> chemicalStructureList) {
		this.chemicalStructureList = chemicalStructureList;
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

	public String getPhysicalCharacteristics() {
		return physicalCharacteristics;
	}

	public void setPhysicalCharacteristics(String physicalCharacteristics) {
		this.physicalCharacteristics = physicalCharacteristics;
	}

	public IR_DataEntry getIR_Data() {
		return IR_Data;
	}

	public void setIR_Data(IR_DataEntry iR_Data) {
		IR_Data = iR_Data;
	}

	public List<NMR_DataEntry> getNMR_DataList() {
		return NMR_DataList;
	}

	public void setNMR_DataList(List<NMR_DataEntry> nMR_DataList) {
		NMR_DataList = nMR_DataList;
	}

	public MS_DataEntry getMS_Data() {
		return MS_Data;
	}

	public void setMS_Data(MS_DataEntry mS_Data) {
		MS_Data = mS_Data;
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

}
