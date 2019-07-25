package com.placefinder.userServiceImpl;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.placefinder.beans.places.AddressDetails;
import com.placefinder.beans.places.Result;
import com.placefinder.beans.user.User;
import com.placefinder.userDao.UserDao;
import com.placefinder.userDaoImpl.UserDaoImpl;
import com.placefinder.userService.UserService;

public class UserServiceImpl implements UserService{
		@Autowired
		private UserDaoImpl userDaoImpl;
		
		public void submitFeedback(User user) {
			/*ApplicationContext ac= new FileSystemXmlApplicationContext("D:/poc/gug/src/main/webapp/WEB-INF/place-servlet.xml");
			userDao=(UserDao) ac.getBean("UserDaoImpl");*/
			System.out.println("obj........... "+userDaoImpl);
			userDaoImpl.submitFeedback(user);
	
		}
		
		public List<Result> getFeedback(List<Result> res) {
			/*ApplicationContext ac= new FileSystemXmlApplicationContext("D:/poc/gug/src/main/webapp/WEB-INF/place-servlet.xml");
			userDao=(UserDao) ac.getBean("UserDaoImpl");*/
			
			 //List<Integer> rating=userDao.getFeedback(res);
			 Iterator<Result> itRes= res.iterator();
			 //
			 System.out.println("check............................................. "+itRes.hasNext());
			 while(itRes.hasNext())
			 {
				 System.out.println("check............................................. "+itRes.hasNext());
				 Result one=itRes.next();
				 List<Integer> rating=userDaoImpl.getFeedback(one.getPlace_id());
				 Iterator<Integer> itRtng= rating.iterator();
				 int sum=0;
				 while(itRtng.hasNext())
				 {
					 sum+=itRtng.next();
				 }
				 float rat=sum/(float)rating.size();
				 int temp=0;
				 if((rat*10)%10 >=7)
					 temp=(int) Math.ceil(rat);
				 else
					 temp=(int) Math.floor(rat);
				 one.setAppRating(temp);
			 }
			 
			 System.out.println("new res :"+res.get(0).getAppRating());
			 return res;
		}
	}

