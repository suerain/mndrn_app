/**
* @author suren
 *
*/

package com.mndrn.app.controller;

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

import com.mndrn.app.model.ChemicalStructureEntry;
import com.mndrn.app.model.Compound;
import com.mndrn.app.model.Genus;
import com.mndrn.app.model.NMR_DataEntry;
import com.mndrn.app.model.PharmacologicalActivityEntry;
import com.mndrn.app.model.SearchCriteria;
import com.mndrn.app.service.ICompoundService;

@Controller
public class CompoundController {

	private void initCompound(Compound compound) {
		compound.setSynonymList(new ArrayList<Compound>());
		compound.setChemicalStructureList(new ArrayList<ChemicalStructureEntry>());
		compound.setIsolatedFrom(new ArrayList<Genus>());
		compound.setNMR_DataList(new ArrayList<NMR_DataEntry>());
		compound.setPharmacologicalActivityList(new ArrayList<PharmacologicalActivityEntry>());
		compound.setReferenceList(new ArrayList<String>());
		for (int i = 0; i < 5; i++) {
			Compound synonym = new Compound();
			compound.getSynonymList().add(synonym);
			ChemicalStructureEntry chemicalStructure = new ChemicalStructureEntry();
			compound.getChemicalStructureList().add(chemicalStructure);
			Genus genus = new Genus();
			compound.getIsolatedFrom().add(genus);
			NMR_DataEntry NMR_DataEntry = new NMR_DataEntry();
			compound.getNMR_DataList().add(NMR_DataEntry);
			PharmacologicalActivityEntry pharmacologicalActivityEntry = new PharmacologicalActivityEntry();
			compound.getPharmacologicalActivityList().add(pharmacologicalActivityEntry);
			String reference = new String();
			compound.getReferenceList().add(reference);
		}
	}

	@Autowired
	private ICompoundService compoundService;

	@ModelAttribute
	public SearchCriteria criteria() {
		return new SearchCriteria();
	}

	@RequestMapping(value = "/searchByCompound", method = { RequestMethod.GET })
	public String searchByCompound(@ModelAttribute("searchCriteria") SearchCriteria searchCriteria, Model model) {
		List<Compound> tempList = this.compoundService.getCompoundByCriteria(searchCriteria);
		List<Compound> compoundList = new ArrayList<Compound>();
		String biologicalActivity = searchCriteria.getBiologicalActivity();

		// Iterate through the whole list to filter only those that also matches
		// the biological activity
		for (Compound compound : tempList) {
			List<PharmacologicalActivityEntry> pharmacologicalActivityList = compound.getPharmacologicalActivityList();
			for (PharmacologicalActivityEntry pAE : pharmacologicalActivityList) {
				if (pAE.getTitle().equalsIgnoreCase(biologicalActivity)) {
					compoundList.add(compound);
				}
			}
		}

		model.addAttribute("compoundList", compoundList);
		model.addAttribute("content", "dashboard");
		return "base_template";
		// return "dashboard";
	}

	@RequestMapping(value = "/viewCompoundDetail/{compoundId}", method = RequestMethod.GET)
	public String viewCompoundDetail(Model model, @PathVariable("compoundId") long compoundId) {
		model.addAttribute("compound", this.compoundService.findOne(compoundId));
		model.addAttribute("content", "compound_detail");
		return "base_template";
		// return "compound_detail";
	}

	@RequestMapping(value = "/linkToCompound", method = { RequestMethod.GET })
	public String linkToCompound(@ModelAttribute("searchCriteria") SearchCriteria searchCriteria, Model model) {
		List<Compound> compoundList = this.compoundService.getCompoundByCriteria(searchCriteria);
		Compound compound = null;
		if (compoundList != null && compoundList.size() > 0) {
			compound = compoundList.get(0);
		}
		if (compound != null) {
			model.addAttribute("compound", compound);
			model.addAttribute("content", "compound_detail");
			return "base_template";
			// return "compound_detail";
		}
		model.addAttribute("content", "dashboard");
		return "base_template";
		// return "dashboard";
	}

	@RequestMapping(value = "/addCompound", method = RequestMethod.GET)
	public String addCompoundForm(@ModelAttribute("compound") Compound compound, Model model) {
		// Initialize compound with required list so that they can be iterated
		// in Form
		this.initCompound(compound);
		model.addAttribute("content", "add_compound");
		return "base_template";
	}

	@RequestMapping(value = "/addCompound", method = RequestMethod.POST)
	public String addCompound(Model model, @Valid Compound compound, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			model.addAttribute("content", "add_compound");
			return "base_template";
		}
		this.compoundService.addCompound(compound);
		model.addAttribute("content", "dashboard");
		return "base_template";
	}

}
