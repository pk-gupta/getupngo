package com.placefinder.service.optimize;

public class OptimizeServiceFactory 
{
	public static OptimizeService getObj()
	{
		return new OptimizeServiceImpl();
	}
}
