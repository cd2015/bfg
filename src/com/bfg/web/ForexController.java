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
import com.bfg.repository.ForexBeauralRepository;

@Controller
public class ForexController {
	@Autowired
	private ForexBeauralRepository forexBeauralRepository;
	
	//Display all forex beaurals
	@RequestMapping(value="/forex/all")
	public String allForexPage(Model model){
		
		return "forex/all";
	}
	
	//Display detail of forex beaural
	@RequestMapping(value="/forex/detail")
	public String detailForexPage(Model model){
		
		return "forex/detail";
	}
	
	@RequestMapping(value="/forex/welcome")
	public String welcomePage(Model model){
		
		return "forex/welcome";
	}
}
