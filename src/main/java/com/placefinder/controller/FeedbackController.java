package com.placefinder.controller;


import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.placefinder.beans.user.User;
import com.placefinder.userServiceImpl.UserServiceImpl;
@RestController
@RequestMapping("/")
public class FeedbackController {
	
	@Autowired
	public UserServiceImpl userServiceImpl;
	
	@RequestMapping(value="/submitFeedback.htm",method = RequestMethod.POST)
	public void submitFeedback(@RequestBody User user){
		
		//UserServiceImpl userServiceImpl = new UserServiceImpl();
		userServiceImpl.submitFeedback(user);
		System.out.println("stored !");
	}
	
	
}
