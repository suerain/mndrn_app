/**
* @author suren
 *
*/

package com.mndrn.app.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mndrn.app.model.Compound;
import com.mndrn.app.model.Genus;
import com.mndrn.app.model.HerbariumEntry;
import com.mndrn.app.model.PharmacologicalActivityEntry;
import com.mndrn.app.model.PhotographEntry;
import com.mndrn.app.model.PlantSpecimenEntry;
import com.mndrn.app.model.SearchCriteria;
import com.mndrn.app.model.TraditionalUsesEntry;
import com.mndrn.app.model.TraverseSectionEntry;
import com.mndrn.app.service.IGenusService;

@Controller
// @RequestMapping("/mndrnapp")
public class GenusController {

	private void initGenus(Genus genus) {
		genus.setSynonymList(new ArrayList<Genus>());
		genus.setLocalNameList(new ArrayList<String>());
		genus.setHerbariumEntryList(new ArrayList<HerbariumEntry>());
		genus.setPlantSpecimenList(new ArrayList<PlantSpecimenEntry>());
		genus.setPhotographList(new ArrayList<PhotographEntry>());
		genus.setTraverseSectionList(new ArrayList<TraverseSectionEntry>());
		genus.setChemConstinuentList(new ArrayList<Compound>());
		genus.setTraditionalUsesList(new ArrayList<TraditionalUsesEntry>());
		genus.setPharmacologicalActivityList(new ArrayList<PharmacologicalActivityEntry>());
		genus.setReferenceList(new ArrayList<String>());
		for (int i = 0; i < 5; i++) {
			Genus synonym = new Genus();
			genus.getSynonymList().add(synonym);
			String localName = new String();
			genus.getLocalNameList().add(localName);
			HerbariumEntry herbarium = new HerbariumEntry();
			genus.getHerbariumEntryList().add(herbarium);
			PlantSpecimenEntry plantSpecimen = new PlantSpecimenEntry();
			genus.getPlantSpecimenList().add(plantSpecimen);
			PhotographEntry photograph = new PhotographEntry();
			genus.getPhotographList().add(photograph);
			TraverseSectionEntry traverseSection = new TraverseSectionEntry();
			genus.getTraverseSectionList().add(traverseSection);
			Compound compound = new Compound();
			genus.getChemConstinuentList().add(compound);
			TraditionalUsesEntry traditionalUsesEntry = new TraditionalUsesEntry();
			genus.getTraditionalUsesList().add(traditionalUsesEntry);
			PharmacologicalActivityEntry pharmacologicalActivityEntry = new PharmacologicalActivityEntry();
			genus.getPharmacologicalActivityList().add(pharmacologicalActivityEntry);
			String reference = new String();
			genus.getReferenceList().add(reference);
		}
	}

	@Autowired
	private IGenusService genusService;

	@ModelAttribute
	public SearchCriteria criteria() {
		return new SearchCriteria();
	}

	@RequestMapping(value = "/searchByGenus", method = { RequestMethod.GET })
	public String searchByGenus(@ModelAttribute("searchCriteria") SearchCriteria searchCriteria, Model model,
			Principal principal) {
		if (principal != null) {
			model.addAttribute("principal", principal);
		}

		List<Genus> tempList = this.genusService.getGenusByCriteria(searchCriteria);
		List<Genus> genusList = new ArrayList<Genus>();
		String localName = (searchCriteria.getLocalName() != null) ? searchCriteria.getLocalName() : "";

		// Iterate through the whole list to filter only those that also matches
		// the local name
		if (tempList != null && tempList.size() > 0) {
			for (Genus genus : tempList) {
				if (genus.getLocalNameList().contains(localName))
					genusList.add(genus);
			}
		}
		model.addAttribute("genusList", genusList);
		model.addAttribute("content", "dashboard");
		model.addAttribute("principal", principal);
		return "base_template";
	}

	@RequestMapping(value = "/viewGenusDetail/{genusId}", method = RequestMethod.GET)
	public String viewGenusDetail(Model model, @PathVariable("genusId") long genusId, Principal principal) {
		if (principal != null) {
			model.addAttribute("principal", principal);
		}
		model.addAttribute("genus", this.genusService.findOne(genusId));
		model.addAttribute("content", "genus_detail");
		return "base_template";
	}

	@RequestMapping(value = "/addGenus", method = RequestMethod.GET)
	public String addGenusForm(@ModelAttribute("genus") Genus genus, Model model, Principal principal) {
		if (principal != null) {
			model.addAttribute("principal", principal);
		}
		// Initialize genus with required list so that they can be iterated in
		// Form
		this.initGenus(genus);
		model.addAttribute("content", "add_genus");
		return "base_template";
	}

	@RequestMapping(value = "/addGenus", method = RequestMethod.POST)
	public String addGenus(Model model, @Valid Genus genus, BindingResult bindingResult, Principal principal) {
		if (principal != null) {
			model.addAttribute("principal", principal);
		}
		if (bindingResult.hasErrors()) {
			model.addAttribute("content", "add_genus");
			return "base_template";
		}
		this.genusService.addGenus(genus);
		model.addAttribute("content", "dashboard");
		return "base_template";
	}

}
