package com.placefinder.controller;
import java.util.List;
import java.util.Map;

import com.placefinder.beans.distance.Dist;
import com.placefinder.beans.places.AddressDetails;
import com.placefinder.beans.places.Result;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.placefinder.service.distancematrixapi.DistanceServiceFactory;
import com.placefinder.service.optimize.OptimizeServiceFactory;
import com.placefinder.service.placesapi.PlacesServiceFactory;
import com.placefinder.userServiceImpl.UserServiceImpl;


@RestController
public class PlaceController 
{
	
	@Autowired
	public PlacesServiceFactory placesServiceFactory;
	@Autowired
	public DistanceServiceFactory distanceServiceFactory;
	@Autowired
	public UserServiceImpl userServiceImpl;
	
	@RequestMapping(value="/search/{type}",method = RequestMethod.GET)
	public Map<String,List<?>> searchPlaces(@RequestParam("place") String place,@RequestParam("radius") String radius,@PathVariable("type") String type)
	{
        AddressDetails searchResult=placesServiceFactory.getPlacesObj().getSearchResult(place, radius, type);
        Dist dist=distanceServiceFactory.getDistanceObj().getDistance(place, searchResult);
        
        //UserServiceImpl userServiceImpl = new UserServiceImpl();
		List<Result> res=userServiceImpl.getFeedback(searchResult.getResult());
		searchResult.setResult(res);
		
        Map<String,List<?>> optimizedResult=OptimizeServiceFactory.getObj().getOptimizedResult(dist, searchResult);
          
        System.out.println("status:    " + searchResult.getStatus());
        System.out.println(optimizedResult);
		return  optimizedResult;
		
	}
	
}
