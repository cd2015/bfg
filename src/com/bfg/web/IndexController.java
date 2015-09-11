package com.bfg.web;

import java.security.Principal;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bfg.domain.ForexBeaural;
import com.bfg.repository.CurrencyRepository;
import com.bfg.repository.ForexBeauralRepository;
import com.bfg.validation.ForexBeauralValidator;

@Controller
public class IndexController {
	@Autowired
	ForexBeauralValidator fbValidator;
	
	@Autowired
	private ForexBeauralRepository forexBeauralRepository;
	
	@RequestMapping("/index")
	public String indexPage(Model model) {
		return "index";
	}
	
	@RequestMapping(value="/login")
	public String loginPage(Principal principal){
		if(principal!=null){
			return "redirect:/";
		}
		return "user/login";
	}
	
	@Transactional
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String registerPage(Model model) {
		model.addAttribute("command",new ForexBeaural());
		return "user/register";
	}
	
	@RequestMapping(value="/register", method={ RequestMethod.POST, RequestMethod.PUT })
	public String registerSave(@Valid @ModelAttribute("command") ForexBeaural forexBeaural, BindingResult result) {
		fbValidator.validate(forexBeaural, result);
		if(result.hasErrors()){
			return "user/register";
		}
		
		forexBeauralRepository.save(forexBeaural);
		return "redirect: /login";
	}
}
