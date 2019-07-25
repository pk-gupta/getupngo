package com.placefinder.userService;

import java.util.List;

import com.placefinder.beans.places.Result;
import com.placefinder.beans.user.User;

public interface UserService {

	    public void submitFeedback(User user);
	    public List<Result> getFeedback(List<Result> res);
	    
	}


