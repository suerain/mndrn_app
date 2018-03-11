/**
* @author suren
 *
*/

package com.mndrn.app.controller;

import java.io.File;
import java.security.Principal;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mndrn.app.model.Credentials;
import com.mndrn.app.model.Member;
import com.mndrn.app.service.ICredentialsService;
import com.mndrn.app.service.IMemberService;

@Controller
//@RequestMapping("/mndrnapp")
public class MemberController {

	@Autowired
	IMemberService memberService;
	@Autowired
	ICredentialsService credentialsService;
	@Autowired
	ServletContext servletContext;
	
	@RequestMapping("/memberform")
	public String memberform(@ModelAttribute("member") Member member) throws ServletException {
		return "add_member";
	}


	@RequestMapping(value = { "/memberform" }, method = RequestMethod.POST)
	public String saveUser(@Valid @ModelAttribute("member") Member member, BindingResult result,
			RedirectAttributes rAttributes) {
		if (result.hasErrors()) {
			return "add_member";
		}

		MultipartFile userImage = member.getImage();
		String rootDirectory = servletContext.getRealPath("/");

		// isEmpty means file exists BUT NO Content
		if (userImage != null && !userImage.isEmpty()) {
			try {
				userImage
						.transferTo(new File(rootDirectory + "\\resources\\images\\" + member.getFirstName() + ".jpg"));
			} catch (Exception e) {
				System.out.println(e);
				throw new RuntimeException(" Image saving failed", e);
			}
		}
		memberService.save(member);
		rAttributes.addFlashAttribute("member", member);
		return "redirect:success";

	}

	@RequestMapping(value = { "/success" }, method = RequestMethod.GET)
	public String showSecondForm() {
		return "membersaved";
	}

	
	@RequestMapping(value = { "/updates" }, method = RequestMethod.GET)
	public String updateMember(@RequestParam("id") Long id, Model model) {
		// Long id=Long.parseLong(idNum);
		Member member = memberService.getUser(id);
		// set user as model attribute to pre-populate the form
		model.addAttribute("member", member);
		// send over our form
		return "memberupdate";
	}

	@RequestMapping(value = { "/delete" }, method = RequestMethod.GET)
	public String deleteMember(@RequestParam("id") Long id, Model model) {
		memberService.deleteMember(id);
		// set user as model attribute to pre-populate the form
		model.addAttribute("recorddeleted", " your records have been deleted");
		// send over our form
		return "membersaved";
	}

	@RequestMapping(value = { "/getCredentials" }, method = RequestMethod.GET)
	@ResponseBody
	public Credentials getMemberCredentials(@RequestParam("password") String password, Model model, Principal user) {
		Credentials credentials = credentialsService
				.updateCredentials(memberService.findByUserName(user.getName()).get(0), password);
		return credentials;
	}

}
