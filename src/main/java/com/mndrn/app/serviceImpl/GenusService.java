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

import com.mndrn.app.model.Compound;
import com.mndrn.app.model.Genus;
import com.mndrn.app.model.HerbariumEntry;
import com.mndrn.app.model.PharmacologicalActivityEntry;
import com.mndrn.app.model.PhotographEntry;
import com.mndrn.app.model.PlantSpecimenEntry;
import com.mndrn.app.model.SearchCriteria;
import com.mndrn.app.model.TraditionalUsesEntry;
import com.mndrn.app.model.TraverseSectionEntry;
import com.mndrn.app.repository.GenusRepository;
import com.mndrn.app.service.ICompoundService;
import com.mndrn.app.service.IGenusService;

@Service
@Transactional
public class GenusService implements IGenusService {

	@Autowired
	GenusRepository genusRepository;

	@Autowired
	ICompoundService compoundService;

	@Autowired
	ServletContext servletContext;

	@Override
	public Genus saveGenus(Genus genus) {
		return this.genusRepository.save(genus);
	}

	@Override
	public void deleteGenus(Genus genus) {
		this.genusRepository.delete(genus);
	}

	@Override
	public List<Genus> getGenusList() {
		return (List<Genus>) this.genusRepository.findAll();
	}

	@Override
	public List<Genus> getGenusByCriteria(SearchCriteria searchCriteria) {
		String genusname = (searchCriteria.getGenusName() != null) ? searchCriteria.getGenusName() : "";
		String species = (searchCriteria.getSpecies() != null) ? searchCriteria.getSpecies() : "";
		return (List<Genus>) this.genusRepository.searchWithCriteria(genusname, species);
	}

	@Override
	public Genus findOne(long id) {
		return this.genusRepository.findOne(id);
	}

	@Override
	public Genus saveAndFlushGenus(Genus genus) {
		return this.genusRepository.saveAndFlush(genus);
	}

	@Override
	public void addGenus(Genus genus) {
		// Filter out only valid entries in the list
		List<Genus> tempSynonymList = genus.getSynonymList();
		genus.setSynonymList(new ArrayList<Genus>());
		for (Genus synonym : tempSynonymList) {
			SearchCriteria criteria = new SearchCriteria();
			if (synonym.getName() != null && synonym.getName().length() > 0 && synonym.getSpecies() != null
					&& synonym.getSpecies().length() > 0) {
				criteria.setGenusName(synonym.getName());
				criteria.setSpecies(synonym.getSpecies());
				List<Genus> genusList = getGenusByCriteria(criteria);
				if (genusList != null && genusList.size() > 0) {
					// Adding real synonym based on genus name and species name
					genus.getSynonymList().add(genusList.get(0));
				}
			}
		}

		// Filter out only valid entries in the list
		List<String> tempLocalNameList = genus.getLocalNameList();
		genus.setLocalNameList(new ArrayList<String>());
		for (String localName : tempLocalNameList) {
			if (localName != null && localName.length() > 0) {
				genus.getLocalNameList().add(localName);
			}
		}

		// Filter out only valid entries in the list
		List<HerbariumEntry> tempHerbariumEntryList = genus.getHerbariumEntryList();
		genus.setHerbariumEntryList(new ArrayList<HerbariumEntry>());
		for (HerbariumEntry herbariumEntry : tempHerbariumEntryList) {
			if (herbariumEntry.getImage() != null && !herbariumEntry.getImage().isEmpty()
					&& herbariumEntry.getExpln() != null && herbariumEntry.getExpln().length() > 0) {
				genus.getHerbariumEntryList().add(herbariumEntry);
			}
		}

		// Filter out only valid entries in the list
		List<PlantSpecimenEntry> tempPlantSpecimenList = genus.getPlantSpecimenList();
		genus.setPlantSpecimenList(new ArrayList<PlantSpecimenEntry>());
		for (PlantSpecimenEntry plantSpecimenEntry : tempPlantSpecimenList) {
			if (plantSpecimenEntry.getImage() != null && !plantSpecimenEntry.getImage().isEmpty()
					&& plantSpecimenEntry.getExpln() != null && plantSpecimenEntry.getExpln().length() > 0) {
				genus.getPlantSpecimenList().add(plantSpecimenEntry);
			}
		}

		// Filter out only valid entries in the list
		List<PhotographEntry> tempPhotographList = genus.getPhotographList();
		genus.setPhotographList(new ArrayList<PhotographEntry>());
		for (PhotographEntry photographEntry : tempPhotographList) {
			if (photographEntry.getImage() != null && !photographEntry.getImage().isEmpty()
					&& photographEntry.getExpln() != null && photographEntry.getExpln().length() > 0) {
				genus.getPhotographList().add(photographEntry);
			}
		}

		// Filter out only valid entries in the list
		List<TraverseSectionEntry> tempTraverseSectionList = genus.getTraverseSectionList();
		genus.setTraverseSectionList(new ArrayList<TraverseSectionEntry>());
		for (TraverseSectionEntry traverseSection : tempTraverseSectionList) {
			if (traverseSection.getImage() != null && !traverseSection.getImage().isEmpty()
					&& traverseSection.getExpln() != null && traverseSection.getExpln().length() > 0) {
				genus.getTraverseSectionList().add(traverseSection);
			}
		}

		// Filter out only valid entries in the list
		List<Compound> tempChemConstinuentList = genus.getChemConstinuentList();
		genus.setChemConstinuentList(new ArrayList<Compound>());
		for (Compound chemConstinuent : tempChemConstinuentList) {
			SearchCriteria criteria = new SearchCriteria();
			if (chemConstinuent.getName() != null && chemConstinuent.getName().length() > 0
					&& chemConstinuent.getIUPACName() != null && chemConstinuent.getIUPACName().length() > 0) {
				criteria.setCompoundName(chemConstinuent.getName());
				criteria.setIUPACName(chemConstinuent.getIUPACName());
				List<Compound> compoundList = this.compoundService.getCompoundByCriteria(criteria);
				if (compoundList != null && compoundList.size() > 0) {
					// Adding real synonym based on compound name and species
					// name
					genus.getChemConstinuentList().add(compoundList.get(0));
				}
			}
		}

		// Filter out only valid entries in the list
		List<TraditionalUsesEntry> tempTraditionalUsesList = genus.getTraditionalUsesList();
		genus.setTraditionalUsesList(new ArrayList<TraditionalUsesEntry>());
		for (TraditionalUsesEntry traditionalUses : tempTraditionalUsesList) {
			if (traditionalUses.getTitle() != null && traditionalUses.getTitle().length() > 0
					&& traditionalUses.getExpln() != null && traditionalUses.getExpln().length() > 0) {
				genus.getTraditionalUsesList().add(traditionalUses);
			}
		}

		// Filter out only valid entries in the list
		List<PharmacologicalActivityEntry> tempPharmacologicalActivityList = genus.getPharmacologicalActivityList();
		genus.setPharmacologicalActivityList(new ArrayList<PharmacologicalActivityEntry>());
		for (PharmacologicalActivityEntry pharmacologicalActivity : tempPharmacologicalActivityList) {
			if (pharmacologicalActivity.getTitle() != null && pharmacologicalActivity.getTitle().length() > 0
					&& pharmacologicalActivity.getExpln() != null && pharmacologicalActivity.getExpln().length() > 0) {
				genus.getPharmacologicalActivityList().add(pharmacologicalActivity);
			}
		}

		// Filter out only valid entries in the list
		List<String> tempReferenceList = genus.getReferenceList();
		genus.setReferenceList(new ArrayList<String>());
		for (String reference : tempReferenceList) {
			if (reference != null && reference.length() > 0) {
				genus.getReferenceList().add(reference);
			}
		}

		this.genusRepository.save(genus);

		// also update for synonym Genus
		for (Genus synonym : genus.getSynonymList()) {
			if (!synonym.getSynonymList().contains(genus)) {
				synonym.getSynonymList().add(genus);
				this.genusRepository.save(synonym);
			}
		}

		// also update for ChemConstinuent Compound
		for (Compound chemConstinuent : genus.getChemConstinuentList()) {
			if (!chemConstinuent.getIsolatedFrom().contains(genus)) {
				chemConstinuent.getIsolatedFrom().add(genus);
				this.compoundService.save(chemConstinuent);
			}
		}

		String rootDirectory = servletContext.getRealPath("/");

		for (HerbariumEntry herbarium : genus.getHerbariumEntryList()) {
			if (herbarium.getImage() != null && !herbarium.getImage().isEmpty() && herbarium.getExpln() != null
					&& herbarium.getExpln().length() > 0) {
				MultipartFile image = herbarium.getImage();
				try {
					image.transferTo(new File(
							rootDirectory + "\\resources\\images_herbarium\\" + herbarium.getHerbariumId() + ".jpg"));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		for (PlantSpecimenEntry plantSpecimen : genus.getPlantSpecimenList()) {
			if (plantSpecimen.getImage() != null && !plantSpecimen.getImage().isEmpty()
					&& plantSpecimen.getExpln() != null && plantSpecimen.getExpln().length() > 0) {
				MultipartFile image = plantSpecimen.getImage();
				try {
					image.transferTo(new File(rootDirectory + "\\resources\\images_plantSpecimen\\"
							+ plantSpecimen.getPlantSpecimenId() + ".jpg"));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		for (PhotographEntry photograph : genus.getPhotographList()) {
			if (photograph.getImage() != null && !photograph.getImage().isEmpty() && photograph.getExpln() != null
					&& photograph.getExpln().length() > 0) {
				MultipartFile image = photograph.getImage();
				try {
					image.transferTo(new File(rootDirectory + "\\resources\\images_photograph\\"
							+ photograph.getPhotographId() + ".jpg"));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		for (TraverseSectionEntry traverseSection : genus.getTraverseSectionList()) {
			if (traverseSection.getImage() != null && !traverseSection.getImage().isEmpty()
					&& traverseSection.getExpln() != null && traverseSection.getExpln().length() > 0) {
				MultipartFile image = traverseSection.getImage();
				try {
					image.transferTo(new File(rootDirectory + "\\resources\\images_traverseSection\\"
							+ traverseSection.getTraverseSectionId() + ".jpg"));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		MultipartFile HPLC_Image = genus.getHPLC_Profile().getImage();
		if (HPLC_Image != null && !HPLC_Image.isEmpty()) {
			try {
				HPLC_Image.transferTo(new File(rootDirectory + "\\resources\\images_hplc_tlc\\"
						+ genus.getHPLC_Profile().getHPLC_TLC_EntryId() + ".jpg"));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		MultipartFile TLC_Image = genus.getTLC_Profile().getImage();
		if (TLC_Image != null && !TLC_Image.isEmpty()) {
			try {
				TLC_Image.transferTo(new File(rootDirectory + "\\resources\\images_hplc_tlc\\"
						+ genus.getTLC_Profile().getHPLC_TLC_EntryId() + ".jpg"));
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
