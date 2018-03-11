/**
* @author suren
 *
*/
package com.mndrn.app.controller;

import java.security.Principal;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mndrn.app.model.SearchCriteria;
import com.mndrn.app.service.IGenusService;

@Controller
// @RequestMapping("/mndrnapp")
public class HomeController {

	@Autowired
	IGenusService genusService;

	@ModelAttribute
	public SearchCriteria criteria() {
		return new SearchCriteria();
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping(value = { "/", "/dashboard" })
	public String dashboard(Model model, Principal principal, Authentication authentication) {
		if (principal != null) {
			model.addAttribute("principal", principal);
			Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
			for (GrantedAuthority a : authorities) {
				if (a.getAuthority().equals("admin")) {
					model.addAttribute("admin", true);
				}
				else {
					model.addAttribute("admin", false);
				}
			}
		}
		model.addAttribute("content", "dashboard");
		return "base_template";
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest servletRequest) throws ServletException {
		servletRequest.logout();
		return "redirect:/login";
	}

}
