package com.placefinder.service.placesapi;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.web.client.RestTemplate;

import com.placefinder.beans.places.AddressDetails;

public class PlacesServiceImpl implements PlacesService 
{
	@Autowired
	private RestTemplate restTemplate;
	
	/*public PlacesServiceImpl()
	{
		ApplicationContext ctx= new FileSystemXmlApplicationContext("D:/workspace/test/placefinderJson/src/main/webapp/WEB-INF/place-servlet.xml");
		restTemplate=(RestTemplate)ctx.getBean("restTemplate");
	}*/

	public Map<String, String> getLatLng(String place) 
	{
		
		StringBuilder url=new StringBuilder("https://maps.googleapis.com/maps/api/place/textsearch/json?query=");
		
		url.append(place);
		url.append("&key=AIzaSyD78_y_2NRkPQHUl3cuTGDFNL7FQh0ZwwE");
		String u=url.toString();
		System.out.println("textsearch url: "+u);
		
		AddressDetails res=restTemplate.getForObject(u, AddressDetails.class);
		
		Map<String,String> latlng=new HashMap<String, String>();
		latlng.put("lat",res.getResult().iterator().next().getGeometry().getLocation().getLat());
		latlng.put("lng",res.getResult().iterator().next().getGeometry().getLocation().getLng());
		
		return latlng;
	}

	public AddressDetails getSearchResult(String place, String radius, String type) 
	{
		Map<String, String> ltln=getLatLng(place);
		
		String url="https://maps.googleapis.com/maps/api/place/nearbysearch/json?location="+ltln.get("lat")+","+ltln.get("lng")+"&radius="+radius+"&types="+type+"&key=AIzaSyD78_y_2NRkPQHUl3cuTGDFNL7FQh0ZwwE";
        AddressDetails searchResult= restTemplate.getForObject(url, AddressDetails.class);
        System.out.println("Url places:"+url);
		return searchResult;
	}
	
}
