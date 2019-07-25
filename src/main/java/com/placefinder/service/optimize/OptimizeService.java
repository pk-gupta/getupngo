package com.placefinder.service.optimize;

import java.util.List;
import java.util.Map;

import com.placefinder.beans.distance.Dist;
import com.placefinder.beans.places.AddressDetails;

public interface OptimizeService 
{
	public Map<String,List<?>> getOptimizedResult(Dist dist , AddressDetails details);
	
}
