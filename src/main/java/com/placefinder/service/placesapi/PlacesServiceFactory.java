package com.placefinder.service.placesapi;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class PlacesServiceFactory 
{
	@Bean
	public PlacesService getPlacesObj()
	{
		return new PlacesServiceImpl();
	}
}
