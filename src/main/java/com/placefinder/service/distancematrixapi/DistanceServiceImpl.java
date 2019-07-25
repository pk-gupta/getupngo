package com.placefinder.service.distancematrixapi;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.web.client.RestTemplate;

import com.placefinder.beans.distance.Dist;
import com.placefinder.beans.distance.Elements;
import com.placefinder.beans.places.AddressDetails;
import com.placefinder.beans.places.Result;

public class DistanceServiceImpl implements DistanceService
{
	@Autowired
	private RestTemplate restTemplate=null;
	
	/*public DistanceServiceImpl()
	{
		ApplicationContext ctx= new FileSystemXmlApplicationContext("D:/workspace/test/placefinderJson/src/main/webapp/WEB-INF/place-servlet.xml");
		restTemplate=(RestTemplate)ctx.getBean("restTemplate");
	}*/
	
	public Dist getDistance(String source,AddressDetails searchResult) 
	{
		Dist dist=null;
		System.out.println("Status............. :"+searchResult.getStatus());
		if(!searchResult.getStatus().equals("ZERO_RESULTS"))
		{
		List<String> destinations=new ArrayList<String>();
        for(Result r: searchResult.getResult())
        {
        	String ltlng=r.getGeometry().getLocation().getLat()+","+r.getGeometry().getLocation().getLng();
        	//System.out.println(ltlng);
        	destinations.add(ltlng);
        }
        
		
		StringBuilder u=new StringBuilder("https://maps.googleapis.com/maps/api/distancematrix/json?origins=");
		u.append(source);
		u.append("&destinations=");
		Iterator<String> it=destinations.iterator();
		while(it.hasNext())
		{
			String cor=it.next();
			u.append(cor);
			if(destinations.get(destinations.size()-1)!=cor)
				u.append("|");
		}
		u.append("&mode=driving&language=en-EN&key=AIzaSyD78_y_2NRkPQHUl3cuTGDFNL7FQh0ZwwE");
		String url=u.toString();
		System.out.println("url: "+url);
		dist=restTemplate.getForObject(url, Dist.class);
		}
		
		System.out.println("result Object :"+searchResult.getResult());

		return dist;
	}
}
