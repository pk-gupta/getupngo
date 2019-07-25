package com.placefinder.beans.places;






import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AddressDetails  
{
	
    private String status;
    @JsonProperty("results")
    private List<Result> results;
	public String getStatus() 
	{
		return status;
	}
	public void setStatus(String status) 
	{
		this.status = status;
	}
	public List<Result> getResult() 
	{
		return results;
	}
	public void setResult(List<Result> results) 
	{
		this.results = results;
	}
	
}
