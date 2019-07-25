package com.placefinder.service.distancematrixapi;



import com.placefinder.beans.distance.Dist;
import com.placefinder.beans.places.AddressDetails;


public interface DistanceService 
{
	public Dist getDistance(String source,AddressDetails searchResult);
	
}
