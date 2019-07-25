package com.placefinder.service.placesapi;

import java.util.Map;

import com.placefinder.beans.places.AddressDetails;

public interface PlacesService 
{
	public Map<String,String> getLatLng(String place);
	public AddressDetails getSearchResult(String place, String radius,String type);
}
