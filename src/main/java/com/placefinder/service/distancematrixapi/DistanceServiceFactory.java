package com.placefinder.service.distancematrixapi;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class DistanceServiceFactory 
{
	@Bean
	public DistanceService getDistanceObj()
	{
		return new DistanceServiceImpl();
	}
}
