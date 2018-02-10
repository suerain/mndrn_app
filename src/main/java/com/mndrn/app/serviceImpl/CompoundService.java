/**
* @author suren
 *
*/
package com.mndrn.app.serviceImpl;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mndrn.app.model.ChemicalStructureEntry;
import com.mndrn.app.model.Compound;
import com.mndrn.app.model.Genus;
import com.mndrn.app.model.HerbariumEntry;
import com.mndrn.app.model.NMR_DataEntry;
import com.mndrn.app.model.PharmacologicalActivityEntry;
import com.mndrn.app.model.PhotographEntry;
import com.mndrn.app.model.PlantSpecimenEntry;
import com.mndrn.app.model.SearchCriteria;
import com.mndrn.app.model.TraditionalUsesEntry;
import com.mndrn.app.model.TraverseSectionEntry;
import com.mndrn.app.repository.CompoundRepository;
import com.mndrn.app.service.ICompoundService;
import com.mndrn.app.service.IGenusService;

@Service
@Transactional
public class CompoundService implements ICompoundService {

	@Autowired
	CompoundRepository compoundRepository;

	@Autowired
	IGenusService genusService;

	@Autowired
	ServletContext servletContext;

	@Override
	public Compound save(Compound compound) {
		return this.compoundRepository.saveAndFlush(compound);
	}

	@Override
	public void deleteCompound(Compound compound) {
		this.compoundRepository.delete(compound);
	}

	@Override
	public List<Compound> getCompoundList() {
		return (List<Compound>) this.compoundRepository.findAll();
	}

	@Override
	public List<Compound> getCompoundByCriteria(SearchCriteria searchCriteria) {
		String compoundName = searchCriteria.getCompoundName();
		String iupacName = searchCriteria.getIUPACName();
		return (List<Compound>) this.compoundRepository.searchWithCriteria(compoundName, iupacName);
	}

	@Override
	public Compound findOne(long id) {
		return this.compoundRepository.findOne(id);
	}

	// compound.setSynonymList(new ArrayList<Compound>());
	// compound.setChemicalStructureList(new
	// compound.setIsolatedFrom(new ArrayList<Genus>());
	// compound.setNMR_DataList(new ArrayList<NMR_DataEntry>());
	// compound.setPharmacologicalActivityList(new
	// compound.setReferenceList(new ArrayList<String>());

	@Override
	public void addCompound(Compound compound) {

		// Filter out only valid entries in the list
		List<Compound> tempSynonymList = compound.getSynonymList();
		compound.setSynonymList(new ArrayList<Compound>());
		for (Compound synonym : tempSynonymList) {
			SearchCriteria criteria = new SearchCriteria();
			if (synonym.getName() != null && synonym.getName().length() > 0 && synonym.getIUPACName() != null
					&& synonym.getIUPACName().length() > 0) {
				criteria.setCompoundName(synonym.getName());
				criteria.setIUPACName(synonym.getIUPACName());
				List<Compound> compoundList = getCompoundByCriteria(criteria);
				if (compoundList != null && compoundList.size() > 0) {
					// Adding real synonym based on compound name and IUPAC name
					compound.getSynonymList().add(compoundList.get(0));
				}
			}
		}

		// Filter out only valid entries in the list
		List<ChemicalStructureEntry> tempChemicalStructureList = compound.getChemicalStructureList();
		compound.setChemicalStructureList(new ArrayList<ChemicalStructureEntry>());
		for (ChemicalStructureEntry chemicalStructure : tempChemicalStructureList) {
			if (chemicalStructure.getImage() != null && !chemicalStructure.getImage().isEmpty()
					&& chemicalStructure.getExpln() != null && chemicalStructure.getExpln().length() > 0) {
				compound.getChemicalStructureList().add(chemicalStructure);
			}
		}

		// Filter out only valid entries in the list
		List<Genus> tempIsolatedFrom = compound.getIsolatedFrom();
		compound.setIsolatedFrom(new ArrayList<Genus>());
		for (Genus genus : tempIsolatedFrom) {
			SearchCriteria criteria = new SearchCriteria();
			if (genus.getName() != null && genus.getName().length() > 0 && genus.getSpecies() != null
					&& genus.getSpecies().length() > 0) {
				criteria.setGenusName(genus.getName());
				criteria.setSpecies(genus.getSpecies());
				List<Genus> genusList = this.genusService.getGenusByCriteria(criteria);
				if (genusList != null && genusList.size() > 0) {
					// Adding real synonym based on genus name and IUPAC
					// name
					compound.getIsolatedFrom().add(genusList.get(0));
				}
			}
		}

		// Filter out only valid entries in the list
		List<NMR_DataEntry> tempNMR_DataList = compound.getNMR_DataList();
		compound.setNMR_DataList(new ArrayList<NMR_DataEntry>());
		for (NMR_DataEntry NMR_DataEntry : tempNMR_DataList) {
			if (NMR_DataEntry.getImage() != null && !NMR_DataEntry.getImage().isEmpty()
					&& NMR_DataEntry.getExpln() != null && NMR_DataEntry.getExpln().length() > 0) {
				compound.getNMR_DataList().add(NMR_DataEntry);
			}
		}

		// Filter out only valid entries in the list
		List<PharmacologicalActivityEntry> tempPharmacologicalActivityList = compound.getPharmacologicalActivityList();
		compound.setPharmacologicalActivityList(new ArrayList<PharmacologicalActivityEntry>());
		for (PharmacologicalActivityEntry pharmacologicalActivity : tempPharmacologicalActivityList) {
			if (pharmacologicalActivity.getTitle() != null && pharmacologicalActivity.getTitle().length() > 0
					&& pharmacologicalActivity.getExpln() != null && pharmacologicalActivity.getExpln().length() > 0) {
				compound.getPharmacologicalActivityList().add(pharmacologicalActivity);
			}
		}

		// Filter out only valid entries in the list
		List<String> tempReferenceList = compound.getReferenceList();
		compound.setReferenceList(new ArrayList<String>());
		for (String reference : tempReferenceList) {
			if (reference != null && reference.length() > 0) {
				compound.getReferenceList().add(reference);
			}
		}

		this.compoundRepository.save(compound);

		// also update for synonym Genus
		for (Compound synonym : compound.getSynonymList()) {
			if (!synonym.getSynonymList().contains(compound)) {
				synonym.getSynonymList().add(compound);
				this.compoundRepository.save(synonym);
			}
		}

		// also update for ChemConstinuent Compound
		for (Genus isolatedFrom : compound.getIsolatedFrom()) {
			if (!isolatedFrom.getChemConstinuentList().contains(compound)) {
				isolatedFrom.getChemConstinuentList().add(compound);
				this.genusService.saveGenus(isolatedFrom);
			}
		}

		String rootDirectory = servletContext.getRealPath("/");

		for (ChemicalStructureEntry chemicalStructure : compound.getChemicalStructureList()) {
			if (chemicalStructure.getImage() != null && !chemicalStructure.getImage().isEmpty()
					&& chemicalStructure.getExpln() != null && chemicalStructure.getExpln().length() > 0) {
				MultipartFile image = chemicalStructure.getImage();
				try {
					image.transferTo(new File(rootDirectory + "\\resources\\images_chemicalStructure\\"
							+ chemicalStructure.getChemicalStructureId() + ".jpg"));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		for (NMR_DataEntry NMR_Data : compound.getNMR_DataList()) {
			if (NMR_Data.getImage() != null && !NMR_Data.getImage().isEmpty() && NMR_Data.getExpln() != null
					&& NMR_Data.getExpln().length() > 0) {
				MultipartFile image = NMR_Data.getImage();
				try {
					image.transferTo(new File(
							rootDirectory + "\\resources\\images_nmr_data\\" + NMR_Data.getNMR_DataId() + ".jpg"));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		MultipartFile IR_DataImage = compound.getIR_Data().getImage();
		if (IR_DataImage != null && !IR_DataImage.isEmpty()) {
			try {
				IR_DataImage.transferTo(new File(rootDirectory + "\\resources\\images_ir_data\\"
						+ compound.getIR_Data().getIR_DataId() + ".jpg"));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		MultipartFile MS_DataImage = compound.getMS_Data().getImage();
		if (MS_DataImage != null && !MS_DataImage.isEmpty()) {
			try {
				MS_DataImage.transferTo(new File(rootDirectory + "\\resources\\images_ms_data\\"
						+ compound.getMS_Data().getMS_DataId() + ".jpg"));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

}
