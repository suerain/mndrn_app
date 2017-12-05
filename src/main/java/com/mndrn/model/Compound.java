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
	private ChemicalStructure chemicalStructure;

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
	private PhysicalCharacteristics physicalCharacteristics;

	@OneToOne
	@Valid
	@JoinColumn(name = "IR_DATA_ID")
	private IRData IRData;

	@OneToOne
	@Valid
	@JoinColumn(name = "NM_DATA_ID")
	private NMRData NMRData;

	@OneToOne
	@Valid
	@JoinColumn(name = "MS_DATA_ID")
	private MSData MSData;

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

	public ChemicalStructure getChemicalStructure() {
		return chemicalStructure;
	}

	public void setChemicalStructure(ChemicalStructure chemicalStructure) {
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

	public PhysicalCharacteristics getPhysicalCharacteristics() {
		return physicalCharacteristics;
	}

	public void setPhysicalCharacteristics(PhysicalCharacteristics physicalCharacteristics) {
		this.physicalCharacteristics = physicalCharacteristics;
	}

	public IRData getIRData() {
		return IRData;
	}

	public void setIRData(IRData iRData) {
		IRData = iRData;
	}

	public NMRData getNMRData() {
		return NMRData;
	}

	public void setNMRData(NMRData nMRData) {
		NMRData = nMRData;
	}

	public MSData getMSData() {
		return MSData;
	}

	public void setMSData(MSData mSData) {
		MSData = mSData;
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
