package com.placefinder.userDao;

import java.util.List;

import com.placefinder.beans.user.User;

	public interface UserDao {
	    public void submitFeedback(User user);
	    public List<Integer> getFeedback(String place_id);
	}
