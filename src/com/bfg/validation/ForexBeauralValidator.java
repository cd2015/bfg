package com.bfg.validation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.bfg.domain.ForexBeaural;
import com.bfg.repository.ForexBeauralRepository;

public class ForexBeauralValidator implements Validator {

	@Autowired
	ForexBeauralRepository fbRepository;
	
    @Override
    public boolean supports(Class clazz) {
      return ForexBeaural.class.equals(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
      ForexBeaural forexBeaural = (ForexBeaural) target;
     
      ForexBeaural fb = fbRepository.findById(forexBeaural.getId()); 

      if(forexBeaural.getName().trim().isEmpty()) {
          errors.rejectValue("name","", "Name field is empty");
      }
      if(forexBeaural.getEmail().trim().isEmpty()) {
          errors.rejectValue("email","", "Email field is empty");
      }
      
      if(forexBeaural.getPhone().trim().isEmpty()) {
          errors.rejectValue("phone","", "Phone field is empty");
      }
      
      if(forexBeaural.getPhysicalAddress().trim().isEmpty()) {
          errors.rejectValue("physicalAddress","", "Physical address field is empty");
      }
      
      if(forexBeaural.getPassword().trim().isEmpty()) {
          errors.rejectValue("password","", "Password field is empty");
      }
      if(forexBeaural.getConfirmPassword().trim().isEmpty()) {
          errors.rejectValue("confirmPassword","", "Confirm Password field is empty");
      }
      if(!forexBeaural.getConfirmPassword().trim().isEmpty()) {
    	  if(!forexBeaural.getPassword().equals(forexBeaural.getConfirmPassword())) {
              errors.rejectValue("confirmPassword","", "Password does not match");
          }
      }

      if(!forexBeaural.getName().trim().isEmpty()&&fb!=null) {
    	  if(!forexBeaural.getName().equals(fb.getName()) && fbRepository.findByName(forexBeaural.getName())!=null ) {
              errors.rejectValue("name","", "Forex already registered, consult administrator");
          }
      }
      if(!forexBeaural.getEmail().trim().isEmpty()&&fb!=null) {
    	  if(!forexBeaural.getEmail().equals(fb.getEmail()) && fbRepository.findByEmail(forexBeaural.getEmail())!=null ) {
              errors.rejectValue("email","", "Email already used, consult administrator");
          }
      }

    }

}
