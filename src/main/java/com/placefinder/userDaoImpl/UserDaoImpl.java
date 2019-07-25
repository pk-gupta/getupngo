package com.placefinder.userDaoImpl;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.placefinder.beans.user.User;
import com.placefinder.userDao.UserDao;

public class UserDaoImpl implements UserDao{
	public HibernateTemplate hbmTemplate;

	public void setHbmTemplate(HibernateTemplate hbmTemplate) {
		this.hbmTemplate = hbmTemplate;
	}
	public void submitFeedback(User user) { 
		 hbmTemplate.save(user);
		  
		 
		}
	public List<Integer> getFeedback(String place_id) {
		List<Integer> ratings = new ArrayList<Integer>();
        String query = "select user.rating from User user where user.place_id='"+place_id+"'";
        //Object[] queryParam = {place_id};
        ratings = (List<Integer>) hbmTemplate.find(query);
        System.out.println("rat :"+ratings);
        return ratings;
	} 
	

}
