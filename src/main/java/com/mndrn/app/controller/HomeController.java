/**
* @author suren
 *
*/
package com.mndrn.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mndrn.app.model.SearchCriteria;
import com.mndrn.app.service.IGenusService;

@Controller
public class HomeController {

	@Autowired
	IGenusService genusService;

	@ModelAttribute
	public SearchCriteria criteria() {
		return new SearchCriteria();
	}
	
	@RequestMapping("/")
	public String login(Model model) {
		model.addAttribute("content", "dashboard");
		return "base_template";
	}

}
