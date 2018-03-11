/**
* @author suren
 *
*/
package com.mndrn.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mndrn.app.service.ICredentialsService;
import com.mndrn.app.service.IMemberService;

import antlr.collections.List;

@Controller
@PreAuthorize("hasRole('ROLE_ADMIN')")
//@RequestMapping("/mndrnapp")
public class AdminController {

	@Autowired
	IMemberService memberService;
	ICredentialsService credentialsService;

	@RequestMapping(value = { "/listallmembers" }, method = RequestMethod.GET)
	public String findAllMember(Model model) {

		// set user as model attribute to pre-populate the form
		model.addAttribute("members", memberService.getAll());
		// send over our form
		return "memberlist";
	}

	@RequestMapping(value = { "/deletecredentials" }, method = RequestMethod.GET)
	public String deleteMember(@RequestParam("username") String username, Model model) {

		memberService.deleteMember(memberService.findByUserName(username).get(0).getId());

		return "redirect:/listallmembers";
	}

}
