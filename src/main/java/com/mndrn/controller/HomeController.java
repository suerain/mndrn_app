/**
* @author suren
 *
*/
package com.mndrn.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.mndrn.model.Genus;
import com.mndrn.service.IGenusService;

@RestController
public class HomeController {

	@Autowired
	IGenusService genusService;

	@RequestMapping(method = RequestMethod.GET)
	public List<Genus> getGenusList() {
		return this.genusService.getGenusList();
	}

}
